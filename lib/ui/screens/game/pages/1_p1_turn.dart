import 'package:flutter/material.dart';
import 'package:gridup_client/backend/backend.dart';
import 'package:gridup_client/backend/models/models.dart';
import 'package:gridup_client/ui/screens/game/game_player_turn_ribbon.dart';
import 'package:gridup_client/ui/screens/game/game_screen.dart';

final whiteTile = Tile(
  elevation: Elevation.middle,
  color: TileColor.fromMaterialColor(Colors.white),
);

final blackTile = Tile(
  elevation: Elevation.middle,
  color: TileColor.fromMaterialColor(Colors.black),
);

final gameState = GameState(
  name: 'state1',
  board: [
    [whiteTile, whiteTile, whiteTile, whiteTile, whiteTile],
    [blackTile, blackTile, blackTile, blackTile, blackTile],
    [whiteTile, whiteTile, whiteTile, whiteTile, whiteTile],
    [blackTile, blackTile, blackTile, blackTile, blackTile],
    [whiteTile, whiteTile, whiteTile, whiteTile, whiteTile],
  ],
);

class P1Turn extends StatelessWidget {
  P1Turn() {
    Backend.instance.setGameState(gameState);
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: InkRipple.splashFactory,
      onTap: () => navigateToNextPage(context),
      child: Container(
        color: Colors.grey,
        child: Center(
          child: GamePlayerTurnRibbon(player: Player.one),
        ),
      ),
    );
  }
}
