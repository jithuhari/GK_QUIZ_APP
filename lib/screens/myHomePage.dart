import 'package:flutter/material.dart';
import 'package:general_knowledge_quiz/controllers/question_controller.dart';
import 'package:general_knowledge_quiz/widgets/progressBar.dart';
import 'package:general_knowledge_quiz/widgets/questionCard.dart';
import 'package:get/get.dart';

class QuizMainPage extends StatefulWidget {
  const QuizMainPage({Key? key}) : super(key: key);

  @override
  _QuizMainPageState createState() => _QuizMainPageState();
}

class _QuizMainPageState extends State<QuizMainPage> {
  int questionIndex = 0;
  int totalScore = 0;
  bool answerWasSelected = false;

  @override
  Widget build(BuildContext context) {

    QuestionController _questionController = Get.put(QuestionController());

    return Scaffold(
      backgroundColor: Colors.tealAccent.shade700,
      body: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * .1,
                    color: Colors.yellow,
                    child: Text(
                      'Lines , Angles And Triangles',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        height: MediaQuery.of(context).size.height * .1,
                      ),
                      Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            ProgressBar(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.indigo.shade700,
                            border: Border.all(color: Colors.orange, width: 4),
                            borderRadius: BorderRadius.circular(10)),
                        height: MediaQuery.of(context).size.height * .15,
                        width: MediaQuery.of(context).size.width * .15,
                        child: Center(
                            child: Text(
                          '0/9',
                          style: Theme.of(context).textTheme.headline3,
                        )),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          
          Expanded(child: 
          PageView.builder(
            itemCount: _questionController.questions.length,
            itemBuilder: (context , index)=>
            QuestionCard(question:_questionController.questions[index] ,),)),
          
          // AnswerCard(),
        ],
      ),
    );
  }
}
