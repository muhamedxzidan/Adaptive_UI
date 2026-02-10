import 'package:flutter/material.dart';

class CustomHowWorkWidgets extends StatelessWidget {
  const CustomHowWorkWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'How It Works',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text('1. Point your camera at sign language gestures.'),
        SizedBox(height: 8),
        Text('2. Press and hold the record button to capture signs.'),
        SizedBox(height: 8),
        Text('3. View the translation as text or listen to voice output.'),
        SizedBox(height: 8),
        Text.rich(
          TextSpan(
            text: '4. All translations are saved in your ',
            children: [
              TextSpan(
                text: 'History',
                style: TextStyle(
                  color: Colors.deepPurple,
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(text: ' for future reference.'),
            ],
          ),
        ),
      ],
    );
  }
}
