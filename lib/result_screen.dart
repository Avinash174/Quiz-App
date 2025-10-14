import 'package:flutter/material.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/question_summary.dart';
import 'package:quiz_app/start_screen.dart';

class ResulScreen extends StatelessWidget {
  const ResulScreen({
    super.key,
    required this.chooseAnswers,
    void Function()? restartQuiz,
  });

  final List<String> chooseAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chooseAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chooseAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestion = questions.length;
    final numCorrectQuestion = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          children: [
            Text(
                'You answered $numTotalQuestion out of $numCorrectQuestion questions correctly!'),
            const SizedBox(height: 30),
            QuestionSummary(summaryData: getSummaryData()),
            const SizedBox(height: 30),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Restart Quiz!')),
            Text('Your score is: $numCorrectQuestion/$numTotalQuestion'),
            const SizedBox(height: 20),
            const Text('Great job!'),
          ],
        ),
      ),
    );
  }
}
