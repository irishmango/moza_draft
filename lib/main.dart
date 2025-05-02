
import 'package:flutter/material.dart';
import 'package:moza_draft/src/screens/dashboard_screen.dart';
import 'package:moza_draft/src/screens/quiz_screen_1.dart';
import 'package:moza_draft/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    theme: primaryTheme,
    home: QuizScreen1(),
  ));
}








// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: 
//       DashboardScreen()
//       // LoginScreen()
//       // TopicsScreen()
//       // TopicDetails()
//       // Center(child: ChapterCard())
//       // ChaptersScreen()
//       // LessonScreen()
//       // QuizWheelScreen()
//       // QuizScreen1()
//       // QuizBackground()
//       // Sandbox()
//       // Experiments()

      
      
      
//     );
//   }
// }