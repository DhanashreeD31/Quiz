import 'package:flutter/material.dart';
import 'package:tflite_flutter/tflite_flutter.dart'; // Import tflite_flutter
import 'result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late Interpreter _interpreter;
  int currentQuestion = 0;
  List<String> questions = [];
  List<String> answers = [];
  List<String> userAnswers = [];

  // Load the AI model
  Future<void> loadModel() async {
    try {
      _interpreter = await Interpreter.fromAsset('assets/models/quiz_model.tflite');
      // Use the model to generate questions or fetch predefined questions
      setState(() {
        // Replace with logic to generate questions dynamically using AI
        questions = ['What is Newton\'s First Law?', 'What is the derivative of sin(x)?', 'What is the pH of pure water?'];
        answers = ['A body at rest stays at rest', 'cos(x)', '7'];
      });
    } catch (e) {
      print('Error loading model: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    loadModel(); // Load model on initialization
  }

  // Function to go to the next question
  void nextQuestion() {
    if (currentQuestion < questions.length - 1) {
      setState(() {
        currentQuestion++;
      });
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ResultScreen()),
      );
    }
  }

  // Function to store user answer
  void selectAnswer(String answer) {
    userAnswers.add(answer);
    nextQuestion();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Quiz')),
      body: Center(
        child: questions.isEmpty
            ? const CircularProgressIndicator() // Show loading indicator if questions are not ready
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    questions[currentQuestion],
                    style: const TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => selectAnswer(answers[currentQuestion]),
                    child: const Text('Select Answer'),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: nextQuestion,
                    child: const Text('Next'),
                  ),
                ],
              ),
      ),
    );
  }
}
