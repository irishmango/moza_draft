import 'package:flutter/material.dart';
import 'package:moza_draft/theme.dart';
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
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              child: Column(
                children: [
                  PageTitleNav(title: "Lessons",),
                  const SizedBox(height: 16),
                  const LessonMainCard(),
                  SizedBox(height: 16,),

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

                  SizedBox(height: 8,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Lessons',
                        style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                           ),),
                  ),

                  SizedBox(height: 8,),
                  // Lessons
                  Row(
                    children: [
                      SizedBox(
                        height: 155,
                        width: MediaQuery.of(context).size.width, 
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            TopicCard(
                              title: "Cadences 101", 
                              color: AppColors.appRed),
                            SizedBox(width: 8,),
                            TopicCard(
                              title: "Cadences 101", 
                              color: AppColors.appRed),
                            SizedBox(width: 8,),
                            TopicCard(
                              title: "Cadences 101", 
                              color: AppColors.appRed)
                                            ]
                                          ),
                      )
                    ],
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

