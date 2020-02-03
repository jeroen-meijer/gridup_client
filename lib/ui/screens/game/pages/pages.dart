import 'package:flutter/material.dart';
import 'package:gridup_client/backend/manual_resource.dart';

import 'package:gridup_client/ui/screens/game/pages/1_p1_turn.dart';
import 'package:gridup_client/ui/screens/game/pages/2_p1_options.dart';
import 'package:gridup_client/ui/screens/game/pages/3_p1_dice.dart';
import 'package:gridup_client/ui/screens/game/pages/4_p1_payment.dart';
import 'package:gridup_client/ui/screens/game/pages/5_p1_house.dart';
import 'package:gridup_client/ui/screens/game/pages/6_p1_end.dart';
import 'package:gridup_client/ui/screens/game/pages/7_p2_turn.dart';
import 'package:gridup_client/ui/screens/game/pages/8_p2_options.dart';
import 'package:gridup_client/ui/screens/game/pages/9_p2_dice.dart';
import 'package:gridup_client/ui/screens/game/pages/10_p2_chance.dart';
import 'package:gridup_client/ui/screens/game/pages/11_p2_jail.dart';

class GamePage {
  const GamePage({
    this.resource = ManualResource.none,
    @required this.builder,
  });

  final ManualResource resource;
  final WidgetBuilder builder;
}

final pages = <GamePage>[
  GamePage(
    resource: ManualResource.preperation,
    builder: (context) => P1Turn(),
  ),
  GamePage(
    resource: ManualResource.general,
    builder: (context) => P1Options(),
  ),
  GamePage(
    resource: ManualResource.general,
    builder: (context) => P1Dice(),
  ),
  GamePage(
    resource: ManualResource.propertiesRentsAndConstruction,
    builder: (context) => P1Payment(),
  ),
  GamePage(
    resource: ManualResource.propertiesRentsAndConstruction,
    builder: (context) => P1House(),
  ),
  GamePage(
    resource: ManualResource.general,
    builder: (context) => P1End(),
  ),
  GamePage(
    resource: ManualResource.general,
    builder: (context) => P2Turn(),
  ),
  GamePage(
    resource: ManualResource.general,
    builder: (context) => P2Options(),
  ),
  GamePage(
    resource: ManualResource.general,
    builder: (context) => P2Dice(),
  ),
  GamePage(
    resource: ManualResource.general,
    builder: (context) => P2Chance(),
  ),
  GamePage(
    resource: ManualResource.jail,
    builder: (context) => P2Jail(),
  ),
];
