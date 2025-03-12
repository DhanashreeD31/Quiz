import 'package:flutter/material.dart';
import 'quiz_screen.dart';

class SubjectSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Subject")),
      body: Column(
        children: [
          SubjectButton(subject: "Physics"),
          SubjectButton(subject: "Chemistry"),
          SubjectButton(subject: "Math"),
        ],
      ),
    );
  }
}

class SubjectButton extends StatelessWidget {
  final String subject;

  SubjectButton({required this.subject});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => QuizScreen(subject: subject)),
          );
        },
        child: Text(subject),
      ),
    );
  }
}
