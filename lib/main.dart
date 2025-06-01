import 'package:flutter/material.dart';

void main() {
  runApp(const TakeshiApp());
}

class TakeshiApp extends StatelessWidget {
  const TakeshiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '応援メッセージ',
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        backgroundColor: Color(0xFFFAF3E0),
        body: Center(
          child: DecoratedMessage(),
        ),
      ),
    );
  }
}

class DecoratedMessage extends StatelessWidget {
  const DecoratedMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      decoration: BoxDecoration(
        color: Colors.orangeAccent.shade100,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 12,
            offset: Offset(0, 6),
          )
        ],
        border: Border.all(
          color: Colors.deepOrange,
          width: 3,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(
            Icons.emoji_events,
            color: Colors.deepOrange,
            size: 48,
          ),
          SizedBox(height: 16),
          Text(
            '夜勤おつかれさまぁ',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
              fontFamily: 'Arial',
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
