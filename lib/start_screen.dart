import 'package:flutter/material.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 38, 24, 124),
            Color.fromARGB(255, 54, 39, 150),
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              '¡Aprende Flutter de manera divertida!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                    backgroundColor: const Color.fromARGB(255, 54, 39, 150)),
                onPressed: startQuiz,
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text('Iniciar Quiz')),
          ],
        ),
      ),
    );
  }
}
