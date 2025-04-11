import 'package:flutter/material.dart';
import 'package:moza_draft/theme.dart';
import 'package:moza_draft/widgets/header_expand.dart';
import 'package:moza_draft/widgets/lesson_main_card.dart';
import 'package:moza_draft/widgets/menu_background.dart';
import 'package:moza_draft/widgets/page_title_nav.dart';
import 'package:moza_draft/widgets/topics_widgets/topic_card.dart';
import 'package:moza_draft/widgets/topics_widgets/topic_main_card.dart';

class LessonScreen extends StatelessWidget {
  const LessonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background
          const MenuBackground(),

          // Foreground
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
                  child: Column(
                    children: [
                      PageTitleNav(title: "Lessons",),
                      const SizedBox(height: 16),
                      const LessonMainCard(),
                      SizedBox(height: 20,),
                
                      // Toggle Switch 
                      Stack(
                        children: [
                        Positioned(
                          child: Container(
                            width: double.infinity,
                            height: 46,
                            decoration: BoxDecoration(
                              color: AppColors.appWhite,
                              border: Border.all(
                                color: const Color.fromARGB(255, 192, 191, 191),
                                width: 1.5
                              ),
                              borderRadius: BorderRadius.circular(20)
                            ),
                          ),
                        ),
                        Positioned(
                          top: 3,
                          left: 3,
                          child: Container(
                            width: 170,
                            height: 40,
                            decoration: BoxDecoration(
                              color: AppColors.appGreen,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withAlpha(50), // Or use .withOpacity(0.5)
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: Center(child: Text("Learn", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),)),
                          )
                          ),
                          Positioned(
                          top: 3,
                          right: 3,
                          child: Text("Test")
                          )
                        ]
                      ),
                
                      SizedBox(height: 12,),
                
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Lessons',
                            style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                               ),),
                      ),
                    ],
                  ),
                ),
             
                // Lessons
                SizedBox(
                  height: 180,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    children: [
                        SizedBox(width: 8,),
                        TopicCard(title: "Plagal Cadences", color: AppColors.appRed),
                        SizedBox(width: 8,),
                        TopicCard(title: "Perfect Cadences", color: AppColors.appRed),
                         SizedBox(width: 8,),
                        TopicCard(title: "Imperfect Cadences", color: AppColors.appRed),                         
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        HeaderExpand(title: "Extra Lessons",),
                      ],
                    ),
                  )


                   ],
            ),
          ),
        ],
      ),
    );
  }
}

