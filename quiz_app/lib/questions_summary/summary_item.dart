import 'package:flutter/material.dart';
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
          vertical: 14,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuestionIdentifier(
              questionIndex: itemData['question_index'] as int,
              isCorrectAnswer: isCorrectAnswer,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemData['question'] as String,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(232, 255, 255, 255),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    itemData['user_answer'] as String,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(212, 255, 255, 255),
                    ),
                  ),
                  Text(
                    itemData['correct_answer'] as String,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(232, 14, 86, 194),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
