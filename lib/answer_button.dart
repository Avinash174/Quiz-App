import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answeText;
  void Function() onTap;
  AnswerButton({
    super.key,
    required this.answeText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(),
      child: Text(answeText),
    );
  }
}
