import 'package:flutter/material.dart';

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

final pages = <WidgetBuilder>[
  (context) => P1Turn(),
  (context) => P1Options(),
  (context) => P1Dice(),
  (context) => P1Payment(),
  (context) => P1House(),
  (context) => P1End(),
  (context) => P2Turn(),
  (context) => P2Options(),
  (context) => P2Dice(),
  (context) => P2Chance(),
  (context) => P2Jail(),
];
