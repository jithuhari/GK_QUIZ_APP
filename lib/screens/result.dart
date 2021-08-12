// import 'package:flutter/material.dart';
// import 'package:general_knowledge_quiz/screens/myHomePage.dart';

// class Result extends StatefulWidget {

//   int? score , 
//   totalQuestion , 
//   correct ,
//   incorrect , 
//   notAttended;

//   Result({
//     this.score ,
//     this.totalQuestion , 
//     this.correct ,
//     this.incorrect ,
//     this.notAttended});

//   @override
//   _ResultState createState() => _ResultState();
// }

// class _ResultState extends State<Result> {

//   String greeting = "";

//   @override
//   void initState() {
   
//     super.initState();

//     var percentage = (widget.correct!/(widget.totalQuestion!*1))*100;

//     if(percentage >=90){
//       greeting = "OutStanding";
//     }else if(percentage >=80 && percentage<90){
//       greeting = "GoodWork";
//     }else if(percentage >=60 && percentage<80){
//       greeting = "Good Effort"; 
//     }else if(percentage <60){
//       greeting = "Needs Improvement"; 
//     }     
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueAccent.shade400,
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text('MATH WIZ',
//                 style: TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold
//                 ),
//                 ),
//                 Text('GAME OVER',
//                 style: TextStyle(
//                   fontSize: 50,
//                   fontWeight: FontWeight.bold
//                 ),
//                 ),
//                 Text('$greeting',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold
//                 ),
//                 ),
//                 SizedBox( height: 8,),
//                 Text('You Scored ${widget.correct} Out of ${widget.totalQuestion!*1}',
//                 style: TextStyle(
//                   fontSize: 20,
//                   //fontWeight: FontWeight.bold
//                 ),
//                 ),
//                 SizedBox( height: 8,),
//                 Text('${widget.correct} correct, ${widget.incorrect} Incorrect , ${widget.notAttended} Not Attended out of ${widget.totalQuestion}',
//                 style: TextStyle(
//                   fontSize: 20,
//                   //fontWeight: FontWeight.bold
//                 ),
//                  ),

//                  SizedBox(height: 15,),

//                  ElevatedButton(  
                   
//                    onPressed: (){
//                       Navigator.pushReplacement( 
//                     context, MaterialPageRoute(
//                       builder: (context)=>QuizPAge(
                       
//                       )));
//                  }, child: Text('Play Again'))
//               ],
//             ),
//           ),      
//     );
//   }
// }