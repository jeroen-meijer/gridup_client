import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter_nfc_reader/flutter_nfc_reader.dart';
import 'package:get_it/get_it.dart';
import 'package:gridup_client/backend/behaviour_subject.dart';
import 'package:gridup_client/backend/models/models.dart';
import 'package:gridup_client/backend/paths.dart' as paths;

class Backend {
  Backend._({
    this.playingCards,
  }) {
    _nfcStreamSubscription =
        FlutterNfcReader.onTagDiscovered().listen((tag) => _playingCardStream.add(_findPlayingCardWithCardId(tag.id)));
  }

  static Future<void> init() async {
    final playingCardDocuments = await _firestore.collection(paths.playingCards).getDocuments();
    final playingCards = playingCardDocuments.documents.map((doc) => doc.data).map(PlayingCard.fromJson).toList();

    final instance = Backend._(
      playingCards: playingCards,
    );

    GetIt.instance.registerSingleton(instance);
  }

  static Backend get instance => GetIt.instance<Backend>();
  static Firestore get _firestore => Firestore.instance;
  static CloudFunctions get _functions => CloudFunctions.instance;

  final _playingCardStream = StreamController<PlayingCard>.broadcast();

  StreamSubscription<NfcData> _nfcStreamSubscription;

  final List<PlayingCard> playingCards;

  final player = BehaviorSubject(Player.fallback);

  PlayingCard _findPlayingCardWithCardId(String cardId) {
    for (final card in playingCards) {
      if (card.cardIds.contains(cardId)) {
        return card;
      }
    }

    return PlayingCard.invalidCard;
  }

  Stream<PlayingCard> get playingCardStream {
    return _playingCardStream.stream;
  }

  Stream<GameState> get gameStateStream {
    return _firestore.document(paths.gameState).snapshots().map((doc) => doc.data).map(GameState.fromJson);
  }

  Future<HttpsCallableResult> activateCard(String cardId) {
    return _functions.getHttpsCallable(functionName: 'activateCard').call({
      'cardId': cardId,
      'playerId': player.value.id,
    });
  }

  void dispose() {
    _playingCardStream?.close();
    _nfcStreamSubscription?.cancel();
  }
}
