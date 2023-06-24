import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
    required this.startQuiz,
  });

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(141, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              fontSize: 22,
              color: const Color.fromARGB(141, 255, 255, 255),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton.icon(
            style: const ButtonStyle(
              iconSize: MaterialStatePropertyAll(30),
            ),
            onPressed: startQuiz,
            icon: const Icon(
              Icons.arrow_circle_right_sharp,
              color: Color.fromARGB(141, 255, 255, 255),
            ),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(141, 255, 255, 255),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
