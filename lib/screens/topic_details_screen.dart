import 'package:flutter/material.dart';
import 'package:moza_draft/widgets/topics_widgets/chapter_card.dart';
import 'package:moza_draft/widgets/menu_background.dart';
import 'package:moza_draft/widgets/topics_widgets/topic_main_card.dart';

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
                  SizedBox(
                        width: double.infinity,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              child: Padding(
                              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                              child: Text('Topics Details',
                                style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            child: Icon(Icons.chevron_left, size: 36)),
                          ]
                        ),
                      ),
                      // Top Card
                       TopicMainCard(),
                       SizedBox(height: 16 ,),
            
                       // Start of Chapters section
                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Chapters',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),),
                          Expanded(child: SizedBox()),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('See all',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),),
                                SizedBox(width: 8,),
                                Icon(
                                  Icons.arrow_outward,
                                  color: Colors.green,
                                  size: 28,
                                )
                            ],
                          ),
                        ],
                      ),
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