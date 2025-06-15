import 'package:ch02_realtime_quiz/web/features/quiz/screens/quiz_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900)),
      debugShowCheckedModeBanner: false,
      home: const QuizScreen(),
    );
  }
}
