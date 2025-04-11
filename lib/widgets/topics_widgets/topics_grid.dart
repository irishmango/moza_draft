import 'package:flutter/material.dart';
import 'package:moza_draft/widgets/header_expand.dart';
import 'package:moza_draft/widgets/topics_widgets/topic_card.dart';

class TopicsGrid extends StatelessWidget {
  final int? limit;

  const TopicsGrid({super.key, this.limit});

  @override
  Widget build(BuildContext context) {
    final allTopics = [
      TopicCard(title: "Cadences", color: Color(0xFFE5EDFF)),
      TopicCard(title: "Ear Training", color: Color(0xFFF8765D)),
      TopicCard(title: "Chords", color: Color(0xFFF9AC4F)),
      TopicCard(title: "Music 101", color: Color(0xFF3C79D0)),
      TopicCard(title: "Cadences", color: Color(0xFF5CB573)),
      TopicCard(title: "Ear Training", color: Color.fromARGB(255, 200, 177, 146)),
      TopicCard(title: "Chords", color: Colors.teal),
      TopicCard(title: "Music 101", color: Colors.deepPurple),
      TopicCard(title: "Cadences", color: Colors.blueAccent),
      TopicCard(title: "Ear Training", color: Color.fromARGB(255, 200, 177, 146)),
      TopicCard(title: "Chords", color: Colors.teal),
      TopicCard(title: "Music 101", color: Colors.deepPurple),
    ];

    final topicsToDisplay = limit != null ? allTopics.take(limit!).toList() : allTopics;

    return Column(
      children: [
        // heading
        
        SizedBox(height: 4,),
        
        //start of topics grid
        GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          padding: EdgeInsets.only(bottom: 8),
          shrinkWrap: true, // make the grid take only as much height as needed
          physics: NeverScrollableScrollPhysics(), 
          children: topicsToDisplay,
        ),
        
      ],
    );
  }
}

