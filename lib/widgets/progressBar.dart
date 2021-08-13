import 'package:flutter/material.dart';
import 'package:general_knowledge_quiz/controllers/question_controller.dart';
import 'package:get/get.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .05,
      width: MediaQuery.of(context).size.width * .5,
      decoration: BoxDecoration(
          color: Colors.tealAccent.shade700,
          borderRadius: BorderRadius.circular(10)),
      child: GetBuilder<QuestionController>(
          init: QuestionController(),
          builder: (controller) {
            return Stack(
              children: [
                //Layout builder provide us the available space for the container
                //constraints.maxWidh needed for our animation
                LayoutBuilder(
                  builder: (context, constraints) => Container(
                    width: constraints.maxWidth * controller.animation!.value,
                    decoration: BoxDecoration(
                        color: Colors.lightGreenAccent.shade400,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Positioned.fill(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '${(controller.animation!.value * 30).round()} Sec',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )
                  ],
                ))
              ],
            );
          }),
    );
  }
}
