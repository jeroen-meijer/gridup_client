import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:gridup_client/backend/behaviour_subject.dart';
import 'package:gridup_client/backend/models/models.dart';
import 'package:gridup_client/backend/paths.dart' as paths;

class Backend {
  Firestore get _firestore => Firestore.instance;
  CloudFunctions get _functions => CloudFunctions.instance;

  final player = BehaviorSubject(Player.fallback);

  Stream<GameState> get gameStateStream {
    return _firestore.document(paths.gameState).snapshots().map((doc) => doc.data).map(GameState.fromJson);
  }

  Future<HttpsCallableResult> activateCard(String cardId) {
    return _functions.getHttpsCallable(functionName: 'activateCard').call({
      'cardId': cardId,
      'playerId': player.value.id,
    });
  }
}
