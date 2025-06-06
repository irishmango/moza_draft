import 'package:flutter/material.dart';
import 'package:moza_draft/src/screens/chapters_screen.dart';
import 'package:moza_draft/src/widgets/header_expand.dart';
import 'package:moza_draft/src/widgets/page_title_nav.dart';
import 'package:moza_draft/src/widgets/topics_widgets/chapter_card.dart';
import 'package:moza_draft/src/shared/menu_background.dart';
import 'package:moza_draft/src/widgets/topics_widgets/topic_main_card.dart';

class TopicDetails extends StatelessWidget {
  const TopicDetails({super.key});

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
              padding: const EdgeInsets.symmetric(vertical: 42, horizontal: 20),
              child: Column(
                children: [
                  // Nav Bar
                  PageTitleNav(
                    title: "Topic Details", 
                    leftIcon: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.chevron_left, size: 36,))),
                      // Top Card
                       TopicMainCard(),
                       SizedBox(height: 16 ,),
            
                       // Start of Chapters section
                      HeaderExpand(title: "Chapters", path: () => ChaptersScreen(),),
                      SizedBox(height: 8,),
                      SizedBox(
                        height: 600,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              right: 0,
                              child: ChapterCard(color: Color(0xFFE5EDFF), buttonColor: Color(0xFFBED2FF), title: "Chord Construction\n& Recognition", duration: "1 Hr 15 Mins", lessonAmount: "8 Lessons", description: "Description")),
                            Positioned(
                              left: 0,
                              right: 0,
                              top: 140,
                              child: ChapterCard(color: Color(0xFF3C79D0), buttonColor: Color(0xFF0056D1), title: "Chord Construction\n& Recognition", duration: "1 Hr 15 Mins", lessonAmount: "8 Lessons", description: "Description")),
                            Positioned(
                              left: 0,
                              right: 0,
                              top: 280,
                              child: ChapterCard(color: Color(0xFFF9AC4F), buttonColor: Color(0xFFFF8D00), title: "Chord Construction\n& Recognition", duration: "1 Hr 15 Mins", lessonAmount: "8 Lessons", description: "Description"))
                          ]
                        ),
                      )
                      ],
                    ),
            ),
          ) 
        ]
      )
    );
    
  }
}

