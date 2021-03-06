//import 'package:flutter/animation.dart';
import 'package:flutter/widgets.dart';
import 'package:general_knowledge_quiz/model/questionModel.dart';
import 'package:general_knowledge_quiz/screens/Score/scorePage.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class QuestionController extends GetxController 
    with SingleGetTickerProviderMixin{

  AnimationController? _animationController;
  Animation? _animation;


  Animation? get animation =>this._animation;

  PageController? _pageController;
  PageController? get pageController => this._pageController;

  List<Question> _questions = 

  sample_data.map((question) => Question(
    id: question['id'], 
    question: question['question'], 
    answer: question['answer'], 
    options: question['options']
    )).toList();

    List<Question> get questions => this._questions;

    bool _isAnswered =false;
    bool get isAnswered => this._isAnswered;

    int? _correctAns;
    int? get correctAns => this._correctAns;

    int? _selectedAns;
    int? get selectedAns => this._selectedAns;

    RxInt _questionNumber = 1.obs;
    RxInt get questionNumber => this._questionNumber;

    int _numOfCorrectAns =0;
    int get numOfCorrectAns => this._numOfCorrectAns;



  @override
  void onInit() {
    _animationController = 
      AnimationController(
        duration: Duration(seconds: 15),
        vsync: this);

         _animation = Tween<double>(begin: 0, end: 1).animate(_animationController!)
      ..addListener(() {
        // update like setState
        update();
      });

    // start our animation
    //when 30sec completed .go to next question
    _animationController!.forward().whenComplete(nextQuestion);

    _pageController = PageController();

    super.onInit();
  }

  // // called just before the Controller is deleted from memory
  @override
  void onClose() {
    super.onClose();
    _animationController!.dispose();
    _pageController!.dispose();
  }

  void checkAns(Question question, int selectedIndex) {
    // because once user press any option then it will run
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;

    // It will stop the counter
    _animationController!.stop();
    update();

    //Once user select an ans after 3s it will go to the next qn
    Future.delayed(Duration(seconds: 1), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false;
      _pageController!.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);

      // Reset the counter
      _animationController!.reset();

      // Then start it again
      // Once timer is finish go to the next qn
      _animationController!.forward().whenComplete(nextQuestion);
    } else {
      //Get package provide us simple way to naviigate another page
      Get.to(()=>ScorePage());
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index +1;
  }
}
