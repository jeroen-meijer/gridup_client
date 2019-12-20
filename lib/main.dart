import 'package:flutter/material.dart';
import 'package:gridup_client/backend/backend.dart';
import 'package:gridup_client/ui/containers/main_container.dart';
import 'package:gridup_client/ui/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Backend.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GridUP',
      theme: AppTheme.theme(),
      home: const MainContainer(),
    );
  }
}