import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter_nfc_reader/flutter_nfc_reader.dart';
import 'package:get_it/get_it.dart';
import 'package:gridup_client/backend/behaviour_subject.dart';
import 'package:gridup_client/backend/cached_stream.dart';
import 'package:gridup_client/backend/manual_resource.dart';
import 'package:gridup_client/backend/mock_data.dart';
import 'package:gridup_client/backend/models/game_info.dart';
import 'package:gridup_client/backend/models/models.dart';
import 'package:gridup_client/backend/observable.dart';
import 'package:gridup_client/backend/paths.dart' as paths;
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class Backend {
  Backend._({
    this.playingCards,
  }) {
    _nfcStreamSubscription = FlutterNfcReader.onTagDiscovered().listen((tag) {
      print('Card scanned <id: ${tag.id}, content: ${tag.content}, status: ${tag.status}>');
      _playingCardStream.add(_findPlayingCardWithCardId(tag.id));
    });

    _serverConfig = Observable(_firestore
        .collection(paths.env)
        .document(paths.serverConfig)
        .snapshots()
        .map((doc) => !doc.exists ? null : ServerConfig.fromJson(doc.data)));
    _serverConfig.stream.listen((serverConfig) => print('New server config fetched: $serverConfig'));
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
  Observable<ServerConfig> _serverConfig;

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

  Stream<PlayingCard> get playingCardStream => _playingCardStream.stream;
  CachedStream<ServerConfig> get serverConfig => _serverConfig;

  Future<List<GameInfo>> getAllGames() async => mockGames;

  Future<HttpsCallableResult> activateCard(String cardId) {
    return _functions.getHttpsCallable(functionName: 'activateCard').call({
      'cardId': cardId,
      'playerId': player.value.id,
    });
  }

  Future<void> setGameState(GameState gameState) async {
    assert(_serverConfig.value != null, 'serverConfig must be set');

    print('setGameState(gameState.name: ${gameState.name})');

    return http.post(
      '${_serverConfig.value.hostUrl}/setGameState',
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
      body: json.encode(gameState.toJson()),
    );
  }

  Future<void> rollDice([int value]) {
    return http.post('${_serverConfig.value.hostUrl}/rollDice',
        headers: {HttpHeaders.contentTypeHeader: 'application/json'}, body: json.encode({'value': value}));
  }

  Future<void> openManual({ManualResource resource = ManualResource.none}) {
    assert(resource != null, 'resource cannot be null.');

    return url_launcher.launch('$manualUrl${resourceUrls[resource]}');
  }

  void dispose() {
    _playingCardStream?.close();
    _nfcStreamSubscription?.cancel();
  }
}

Backend get backend => Backend.instance;
