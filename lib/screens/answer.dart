import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String answerText;
  final Color answerColor;
  final Function answerTap;
  Answers({
    required this.answerText, 
    required this.answerColor , 
    required this.answerTap});

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
          answerTap;
        },
        child: Container(
          padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 5.5, 0,
              MediaQuery.of(context).size.width / 5.5, 0),
          decoration: BoxDecoration(
            color: answerColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              '$answerText',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
