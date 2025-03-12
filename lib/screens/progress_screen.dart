import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  // This screen would display user progress, XP, streaks, and badges.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Progress')),
      body: const Center(
        child: Text(
          'XP, Streaks, and Badges will be displayed here.\n(Feature to be implemented)',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
