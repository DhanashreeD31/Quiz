import 'package:flutter/material.dart';
import '../screens/quiz_screen.dart';

class SubjectButton extends StatelessWidget {
  final String subject;
  const SubjectButton({Key? key, required this.subject}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          // Navigate to quiz screen for the chosen subject
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => QuizScreen(subject: subject)),
          );
        },
        child: Text(subject, style: const TextStyle(fontSize: 18)),
      ),
    );
  }
}
