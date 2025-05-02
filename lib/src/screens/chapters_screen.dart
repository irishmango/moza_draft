import 'package:flutter/material.dart';
import 'package:moza_draft/theme/theme.dart';
import 'package:moza_draft/src/widgets/page_title_nav.dart';
import 'package:moza_draft/src/widgets/topics_widgets/chapter_card.dart';
import 'package:moza_draft/src/shared/menu_background.dart';

class ChaptersScreen extends StatelessWidget {
  const ChaptersScreen({super.key});

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
                  PageTitleNav(
                    title: "Topics Chapters", 
                    leftIcon: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.chevron_left, size: 36,)),),
                  SizedBox(height: 8,),
                  Column(
                    spacing: 8,
                    children: [
                    ChapterCard(color: AppColors.appLightBlue, buttonColor: AppColors.appLightBlueAccent, title: "Chord Construction\n& Recognition", duration: "1 Hr 15 Mins", lessonAmount: "8 Lessons", description: "Description"),
                    ChapterCard(color: AppColors.appBlue, buttonColor: AppColors.appBlueAccent, title: "Chord Construction\n& Recognition", duration: "1 Hr 15 Mins", lessonAmount: "8 Lessons", description: "Description"),
                    ChapterCard(color: AppColors.appOrange, buttonColor: AppColors.appOrangeAccent, title: "Chord Construction\n& Recognition", duration: "1 Hr 15 Mins", lessonAmount: "8 Lessons", description: "Description"),
                     ],
                  )
                ],
                    ),
            )
          )
                            
                   ]
                   ),
                 );
     
  }
}