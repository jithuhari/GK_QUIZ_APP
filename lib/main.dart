import 'package:flutter/material.dart';
import 'package:general_knowledge_quiz/screens/myHomePage.dart';
import 'package:general_knowledge_quiz/theme/app_theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'General Knowledge Quiz',
      debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
      home: QuizMainPage(),
    );
  }
}

