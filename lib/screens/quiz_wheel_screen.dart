
import 'package:flutter/material.dart';
import 'package:moza_draft/theme.dart';
import 'package:moza_draft/widgets/menu_background.dart';
import 'package:moza_draft/widgets/page_title_nav.dart';

class QuizWheelScreen extends StatelessWidget {
  const QuizWheelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      body: Stack(
        children: [
          // Background
          MenuBackground(),

          // Foreground
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              child: Column(
                children: [
                  PageTitleNav(title: ""),
                  SizedBox(height: 150,),
                  Text("Spin to Learn!", 
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 12,),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.appOrange
                    ),
                    child: FilledButton(
                      onPressed: () {}, 
                      child: Text("Spin", style: TextStyle(fontSize: 20),))),

                  
                    ],
              ),
            )
      )],
            ),
    );
      }
}