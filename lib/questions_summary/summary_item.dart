import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_app/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question_index'] as int,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 30,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color.fromRGBO(0, 0, 0, .2),
                    ),
                    color: const Color.fromRGBO(255, 255, 255, .1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Selected:',
                        style: TextStyle(
                          color: Color.fromARGB(255, 249, 133, 241),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(itemData['user_answer'] as String,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 202, 171, 252),
                            fontSize: 12,
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Correct:',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 200, 200),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(itemData['correct_answer'] as String,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 181, 254, 246),
                            fontSize: 12,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
