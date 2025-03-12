class Question {
  final String text;
  final List<String> options;
  final String correctAnswer;
  final String hint;
  final String explanation;

  Question({
    required this.text,
    required this.options,
    required this.correctAnswer,
    required this.hint,
    required this.explanation,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      text: json['text'],
      options: List<String>.from(json['options'] ?? []), // Ensure list format
      correctAnswer: json['correctAnswer'],
      hint: json['hint'] ?? '',
      explanation: json['explanation'] ?? '',
    );
  }
}
