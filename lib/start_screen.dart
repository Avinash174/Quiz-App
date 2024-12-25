import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Learn Flutter the fun way!',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
