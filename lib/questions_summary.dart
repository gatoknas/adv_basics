import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionsSummary({super.key, required this.summaryData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            var isCorrect = data['user_answer'] as String ==
                data['correct_answer'] as String;

            return Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  padding: const EdgeInsets.all(5),
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      color: isCorrect
                          ? Color.fromARGB(255, 62, 167, 188)
                          : Color.fromARGB(255, 158, 34, 151),
                      borderRadius: BorderRadius.circular(100)
                      //more than 50% of width makes circle
                      ),
                  child: Text(
                    style: GoogleFonts.lato(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    ((data['question_index'] as int) + 1).toString(),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lato(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        data['user_answer'] as String,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.lato(
                          color: Color.fromARGB(255, 171, 60, 205),
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        textAlign: TextAlign.right,
                        style: GoogleFonts.lato(
                          color: Color.fromARGB(255, 130, 83, 248),
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
