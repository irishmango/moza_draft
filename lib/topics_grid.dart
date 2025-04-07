import 'package:flutter/material.dart';
import 'package:moza_draft/topic_card.dart';

class TopicsGrid extends StatelessWidget {
  const TopicsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                // heading
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Text('Topics to Learn',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                    Expanded(child: SizedBox()),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('See all',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),),
                            SizedBox(width: 8,),
                            Icon(
                              Icons.arrow_outward,
                              color: Colors.green,
                              size: 32,
                            )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                //start of grid
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
                  shrinkWrap: true, // make grid take only as much height as needed
                  physics: NeverScrollableScrollPhysics(), // disable inner scrolling
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
                    // SizedBox(height: 8,)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

