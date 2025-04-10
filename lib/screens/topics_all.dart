
import 'package:flutter/material.dart';
import 'package:moza_draft/widgets/menu_background.dart';
import 'package:moza_draft/widgets/page_title_nav.dart';
import 'package:moza_draft/widgets/topics_widgets/topic_card.dart';

class TopicsScreen extends StatelessWidget {
  const TopicsScreen({super.key});

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
                  PageTitleNav(title: "Topics To Learn"),
                  SizedBox(height: 8,),
                      //start of topics grid
                      GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
                        shrinkWrap: true, // makes the grid take only as much height as needed
                        physics: NeverScrollableScrollPhysics(), 
                        children: [
                          TopicCard(title: "Cadences", color: Color(0xFFE5EDFF)),
                          TopicCard(title: "Ear Training", color: Color(0xFFF8765D)),
                          TopicCard(title: "Chords", color: Color(0xFFF9AC4F)),
                          TopicCard(title: "Music 101", color: Color(0xFF3C79D0)),
                          TopicCard(title: "Cadences", color: Color(0xFF5CB573)),
                          TopicCard(title: "Ear Training", color: const Color.fromARGB(255, 200, 177, 146)),
                          TopicCard(title: "Chords", color: Colors.teal),
                          TopicCard(title: "Music 101", color: Colors.deepPurple),
                          TopicCard(title: "Cadences", color: Colors.blueAccent),
                          TopicCard(title: "Ear Training", color: const Color.fromARGB(255, 200, 177, 146)),
                          TopicCard(title: "Chords", color: Colors.teal),
                          TopicCard(title: "Music 101", color: Colors.deepPurple),
                          
                        ],
                      )
                    ],
              ),
            )
      )],
            ),
    );
      }
}