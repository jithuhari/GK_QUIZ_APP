import 'package:flutter/material.dart';
import 'package:general_knowledge_quiz/model/questionModel.dart';
import 'package:general_knowledge_quiz/widgets/answerCard.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
    required this.question
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Column(
        children: 
          [Container(
            decoration: BoxDecoration(
                color: Colors.tealAccent.shade700,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.teal, width: 6)),
            height: MediaQuery.of(context).size.height * .4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                    question.question,
                // '${sample_data[0]['question']}',
                style: Theme.of(context).textTheme.headline3,
              )),
            ),
          ),
          AnswerCard(question: question,),
        ],
      ),
    );
  }
}