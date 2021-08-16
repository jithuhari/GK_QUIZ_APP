import 'package:flutter/material.dart';
import 'package:general_knowledge_quiz/controllers/question_controller.dart';
import 'package:get/get.dart';

class ScorePage extends StatefulWidget {
  const ScorePage({ Key? key }) : super(key: key);

  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {

  QuestionController _qnController = Get.put(QuestionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            image: AssetImage('assets/images/score.jpg')),
          Column(
            children: [
              Spacer(),
              Center(
                child: Text('YOUR SCORE',
                style: Theme.of(context).textTheme.headline3,),
              ),
              Center(
                child:  Text(
                          '${_qnController.numOfCorrectAns}/${_qnController.questions.length}',
                          style: Theme.of(context).textTheme.headline3,
                        )
              ),
              Spacer(),
            ],
          )
        ],
      ),
    );
  }
}