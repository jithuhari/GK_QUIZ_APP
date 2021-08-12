import 'package:flutter/material.dart';
import 'package:general_knowledge_quiz/screens/answer.dart';
import 'package:general_knowledge_quiz/widgets/progressBar.dart';

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
                    children: 
                      [Container(
                        decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        height: MediaQuery.of(context).size.height * .1,
                      ),
                      Center(
                        child: Column(
                          children: 
                            [
                              SizedBox(height: 10,),
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
                        child: Center(child: Text('0/9',
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
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.tealAccent.shade700,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.teal, width: 6)),
              height: MediaQuery.of(context).size.height * .4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                  '${_questions[questionIndex]['question']}',
                  style: Theme.of(context).textTheme.headline3,
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
            child: Container(
              height: MediaQuery.of(context).size.height * .15,
              decoration: BoxDecoration(
                color: Colors.tealAccent.shade700,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.teal, width: 1),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .9,
                    child: Row(
                      children: [
                        ...(_questions[questionIndex]['answers']
                                as List<Map<String, Object>>)
                            .map(
                          (answer) => Expanded(
                            child: Answers(
                              answerText: '${answer['answerText']}',
                              answerColor: answerWasSelected
                                  ? answer['score'] == true
                                      ? Colors.green
                                      : Colors.red
                                  : Colors.yellowAccent,
                                  answerTap: (){},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


final _questions = const [
  {
    'question':
        'Find the time if in an analog clock , the hour hand is at 9 and the minute hand makes an angle of 90 degree with the hour hand ?',
    'answers': [
      {'answerText': '9.00', 'score': true},
      {'answerText': '9.30', 'score': false},
    ],
  },
  {
    'question':
        'In which month does the German festival of Oktoberfest mostly take place?',
    'answers': [
      {'answerText': 'October', 'score': false},
      {'answerText': 'September', 'score': true},
    ],
  },
  {
    'question': 'Who composed the music for Sonic the Hedgehog 3?',
    'answers': [
      {'answerText': 'Timbaland', 'score': false},
      {'answerText': 'Michael Jackson', 'score': true},
    ],
  },
  {
    'question': 'In Georgia (the state), it’s illegal to eat what with a fork?',
    'answers': [
      {'answerText': 'Fried chicken', 'score': true},
      {'answerText': 'Pizza', 'score': false},
    ],
  },
  {
    'question': 'In which country are Panama hats made?',
    'answers': [
      {'answerText': 'Ecuador', 'score': true},
      {'answerText': 'Panama (duh)', 'score': false},
    ],
  },
  {
    'question': 'From which country do French fries originate?',
    'answers': [
      {'answerText': 'Belgium', 'score': true},
      {'answerText': 'France (duh)', 'score': false},
    ],
  },
  {
    'question': 'Which sea creature has three hearts?',
    'answers': [
      {'answerText': 'Killer Whales', 'score': false},
      {'answerText': 'The Octopus', 'score': true},
    ],
  },
];
