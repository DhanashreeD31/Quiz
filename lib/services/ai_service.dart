import 'dart:async';
import '../models/question.dart';

class AIService {
  /// Generates a multiple-choice question based on subject and difficulty level.
  static Future<Question> generateQuestion(String subject, String level) async {
    await Future.delayed(const Duration(seconds: 1));

    if (subject == 'Physics') {
      if (level == 'beginner') {
        return Question(
          text: 'What is the formula for Newton\'s second law?',
          options: ['F=ma', 'E=mc²', 'P=IV', 'V=IR'],
          correctAnswer: 'F=ma',
          hint: 'It relates force, mass, and acceleration.',
          explanation: 'Newton\'s second law states that force equals mass times acceleration.',
        );
      } else if (level == 'intermediate') {
        return Question(
          text: 'What is the SI unit of force?',
          options: ['Joule', 'Watt', 'Newton', 'Pascal'],
          correctAnswer: 'Newton',
          hint: 'It is named after Sir Isaac Newton.',
          explanation: 'The SI unit of force is the Newton (N).',
        );
      } else {
        return Question(
          text: 'Which law explains why rockets work in space?',
          options: [
            'Newton\'s First Law',
            'Newton\'s Second Law',
            'Newton\'s Third Law',
            'Law of Conservation of Mass'
          ],
          correctAnswer: 'Newton\'s Third Law',
          hint: 'For every action, there is an equal and opposite reaction.',
          explanation: 'Rockets work due to Newton\'s Third Law.',
        );
      }
    }

    if (subject == 'Chemistry') {
      if (level == 'beginner') {
        return Question(
          text: 'What is the chemical formula for water?',
          options: ['H2O', 'CO2', 'O2', 'NaCl'],
          correctAnswer: 'H2O',
          hint: 'It consists of hydrogen and oxygen.',
          explanation: 'Water is composed of two hydrogen atoms and one oxygen atom.',
        );
      } else if (level == 'intermediate') {
        return Question(
          text: 'What is the pH of a neutral solution?',
          options: ['0', '7', '14', '10'],
          correctAnswer: '7',
          hint: 'It is neither acidic nor basic.',
          explanation: 'A pH of 7 is neutral.',
        );
      } else {
        return Question(
          text: 'Which of these elements is the most electronegative?',
          options: ['Oxygen', 'Chlorine', 'Fluorine', 'Nitrogen'],
          correctAnswer: 'Fluorine',
          hint: 'It is at the top-right of the periodic table.',
          explanation: 'Fluorine has the highest electronegativity.',
        );
      }
    }

    if (subject == 'Math') {
      if (level == 'beginner') {
        return Question(
          text: 'What is the square root of 16?',
          options: ['2', '3', '4', '5'],
          correctAnswer: '4',
          hint: 'Multiply it by itself to get 16.',
          explanation: '4 × 4 = 16.',
        );
      } else if (level == 'intermediate') {
        return Question(
          text: 'What is the derivative of x²?',
          options: ['x', '2x', 'x²', '1/x'],
          correctAnswer: '2x',
          hint: 'Use the power rule.',
          explanation: 'The derivative of x² is 2x.',
        );
      } else {
        return Question(
          text: 'What is the integral of 2x?',
          options: ['x² + C', '2x² + C', 'ln(x) + C', '1/x + C'],
          correctAnswer: 'x² + C',
          hint: 'Reverse the power rule.',
          explanation: 'The integral of 2x is x² + C.',
        );
      }
    }

    return Question(
      text: 'No question available for this subject.',
      options: [],
      correctAnswer: '',
      hint: '',
      explanation: '',
    );
  }
}
