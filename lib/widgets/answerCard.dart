import 'package:flutter/material.dart';
import 'package:general_knowledge_quiz/controllers/question_controller.dart';
import 'package:general_knowledge_quiz/model/questionModel.dart';
import 'package:general_knowledge_quiz/screens/answer.dart';
import 'package:get/get.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    Key? key,
     required this.question
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {

    QuestionController _controller =Get.put(QuestionController());

    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
      child: Container(
        height: MediaQuery.of(context).size.height * .15,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.tealAccent.shade700,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.teal, width: 1),
        ),
        child: Row(
          children: [
            
            Container(
              width: MediaQuery.of(context).size.width * .9,
              child: Row(
                children: [
                Spacer(),
                ...List.generate(
                  question.options!.length, 
                  (index) => Answers(
                    index:index,
                    text:question.options![index], 
                    press: () => _controller.checkAns(question, index)
                  ),
                  ),
                  Spacer(),
                ],
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
