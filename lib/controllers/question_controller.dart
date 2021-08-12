import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';



class QuestionController extends GetxController 
    with SingleGetTickerProviderMixin{

  AnimationController? _animationController;
  Animation? _animation;


  Animation? get animation =>this._animation;

  @override
  void onInit() {
    _animationController = 
      AnimationController(
        duration: Duration(seconds: 30),
        vsync: this);

         _animation = Tween<double>(begin: 0, end: 1).animate(_animationController!)
      ..addListener(() {
        // update like setState
        update();
      });

    // start our animation

    _animationController!.forward();
    super.onInit();
  }

}