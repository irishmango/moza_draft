
import 'package:flutter/material.dart';
import 'package:moza_draft/src/screens/coming_soon.dart';
import 'package:moza_draft/src/screens/topic_details_screen.dart';
import 'package:moza_draft/src/shared/menu_background.dart';
import 'package:moza_draft/src/widgets/page_title_nav.dart';
import 'package:moza_draft/src/widgets/topics_widgets/topic_card.dart';

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
                  PageTitleNav(
                    title: "Topics To Learn", 
                    leftIcon: GestureDetector(onTap:() {
                      Navigator.of(context).pop();
                  },
                  child: Icon(Icons.chevron_left, size: 36,)),),
                  SizedBox(height: 8,),
                      //start of topics grid
                      GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
                        shrinkWrap: true, 
                        physics: NeverScrollableScrollPhysics(), 
                        children: [
                          TopicCard(title: "Cadences", color: Color(0xFFE5EDFF), path: () => TopicDetails(),),
                          TopicCard(title: "Ear Training", color: Color(0xFFF8765D), path: () => ComingSoon(),),
                          TopicCard(title: "Chords", color: Color(0xFFF9AC4F), path: () => ComingSoon(),),
                          TopicCard(title: "Music 101", color: Color(0xFF3C79D0), path: () => ComingSoon(),),
                          TopicCard(title: "Bach Chorales", color: Color(0xFF5CB573), path: () => ComingSoon(),),
                          TopicCard(title: "Ear Training", color: const Color.fromARGB(255, 200, 177, 146), path: () => ComingSoon(),),
                          TopicCard(title: "Chords", color: Colors.teal, path: () => ComingSoon(),),
                          TopicCard(title: "Music 101", color: Colors.deepPurple, path: () => ComingSoon(),),
                          TopicCard(title: "Cadences", color: Colors.blueAccent, path: () => ComingSoon(),),
                          TopicCard(title: "Ear Training", color: const Color.fromARGB(255, 200, 177, 146), path: () => ComingSoon(),),
                          TopicCard(title: "Chords", color: Colors.teal, path: () => ComingSoon(),),
                          TopicCard(title: "Music 101", color: Colors.deepPurple, path: () => ComingSoon(),),
                          
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