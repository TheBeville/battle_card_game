import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:go_router/go_router.dart';
import './theme.dart';
import './view/settings_view.dart';
import './view/game_view.dart';
import './view/home_view.dart';

void main() async {
  // initialise widget tree before MyApp is ran,
  // so DesktopWindow can be modified
  WidgetsFlutterBinding.ensureInitialized();
  await DesktopWindow.setMinWindowSize(const Size(1160, 860));
  runApp(const MyApp());
}

// defines routes for navigation to different screens
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/new_game',
      builder: (context, state) => const GameView(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsView(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // defaults to '/' route on app load
    return MaterialApp.router(
      title: 'Battle Cards',
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      theme: mainAppTheme,
    );
  }
}
