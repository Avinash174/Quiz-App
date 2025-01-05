import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final VoidCallback switchScreen;

  const StartScreen(this.switchScreen, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Welcome to the Quiz App!',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: switchScreen,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              backgroundColor: Colors.purple,
            ),
            child: const Text(
              'Start Quiz',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
