import 'package:flutter/material.dart';
import 'package:general_knowledge_quiz/controllers/question_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
class Answers extends StatelessWidget {
 
  const Answers({
    Key? key, 
    required this.text, 
    required this.index, 
    required this.press,
  }):super(key: key);

  final String text;
  final int index;
  final VoidCallback press;
  //const Answers({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // Padding(
        //   padding: const EdgeInsets.all(4.0),
        //   child: ElevatedButton(

        //                     style: ButtonStyle(
        //                         // padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(
        //                         //   MediaQuery.of(context).size.width/5.5,
        //                         //   0,
        //                         //   MediaQuery.of(context).size.width/5.5,
        //                         //   0)
        //                         //   ),
        //                         backgroundColor: MaterialStateProperty.all<Color>(
        //                             answerColor),
        //                         shape:
        //                             MaterialStateProperty.all<RoundedRectangleBorder>(
        //                                 RoundedRectangleBorder(
        //                                     borderRadius: BorderRadius.circular(10),
        //                                     side: BorderSide(
        //                                         color: Colors.yellowAccent)))),
        //                     onPressed: () {},
        //                     child: Text(
        //                       '$answerText',
        //                       style: TextStyle(color: Colors.black),
        //                     ),
        //                   ),
        // );

        Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: (){
          
        },
        child: GetBuilder<QuestionController>(
          init:QuestionController() ,
          builder: (qnController) {

            Color getTheRightColor(){
              if (qnController.isAnswered){

                if (index == qnController.correctAns) {
                  return Colors.green;
                } else if(index==qnController.selectedAns &&
                    qnController.selectedAns != qnController.correctAns) 
                {
                    return Colors.red;
                }
                
              }
              return Colors.yellow;
            }

            return InkWell(
              onTap: press,
              child: Container(
                padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 6, 0,
                    MediaQuery.of(context).size.width / 6, 0),
                decoration: BoxDecoration(
                  color: getTheRightColor(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    '$text',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
