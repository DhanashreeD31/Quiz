import 'package:flutter/material.dart';

class ReviewScreen extends StatelessWidget {
  // This screen would eventually show past mistakes for review.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Review Mode')),
      body: const Center(
        child: Text(
          'Review past mistakes here.\n(Feature to be implemented)',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
