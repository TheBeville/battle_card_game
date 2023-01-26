import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // uses go_router to navigate to GameView
    void launchNewGame() {
      context.go('/new_game');
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Battle Cards',
              style: TextStyle(fontSize: 120.0),
            ),
            const SizedBox(
              height: 50.0,
            ),
            ElevatedButton(
              onPressed: launchNewGame,
              child: const Text('New Game'),
            ),
          ],
        ),
      ),
    );
  }
}
