import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Question 1',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            onTap: () {},
            answerText: 'Answer 1',
          ),
          AnswerButton(
            onTap: () {},
            answerText: 'Answer 2',
          ),
          AnswerButton(
            onTap: () {},
            answerText: 'Answer 3',
          ),
        ],
      ),
    );
  }
}
