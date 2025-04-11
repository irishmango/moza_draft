
import 'package:flutter/material.dart';
import 'package:moza_draft/sandbox.dart';
import 'package:moza_draft/screens/chapters_screen.dart';
import 'package:moza_draft/screens/dashboard_screen.dart';
import 'package:moza_draft/screens/lesson_screen.dart';
import 'package:moza_draft/screens/login_screen.dart';
import 'package:moza_draft/screens/profile_screen.dart';
import 'package:moza_draft/screens/quiz_wheel_screen.dart';
import 'package:moza_draft/screens/topic_details_screen.dart';
import 'package:moza_draft/screens/topics_all.dart';
import 'package:moza_draft/theme.dart';
import 'package:moza_draft/widgets/topics_widgets/chapter_card.dart';

void main() {
  runApp(MaterialApp(
    theme: primaryTheme,
    home: LoginScreen(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: 
      // DashboardScreen()
      // LoginScreen()
      // TopicsScreen()
      // TopicDetails()
      // Center(child: ChapterCard())
      // ChaptersScreen()
      // LessonScreen()
      // QuizWheelScreen()
      Sandbox()
      
      
      
    );
  }
}