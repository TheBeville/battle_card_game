import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart';
import './view/game_view.dart';
import './theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DesktopWindow.setMinWindowSize(const Size(1160, 860));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Battle Cards',
      debugShowCheckedModeBanner: false,
      theme: mainAppTheme,
      home: const GameView(title: 'Battle Cards'),
    );
  }
}
