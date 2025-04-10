import 'package:flutter/material.dart';
import 'package:moza_draft/screens/lesson_screen.dart';
import 'package:moza_draft/screens/topic_details_screen.dart';
import 'package:moza_draft/screens/topics_all.dart';
import 'package:moza_draft/widgets/dashboard_widgets/dashboard_app_bar.dart';
import 'package:moza_draft/widgets/dashboard_widgets/gym_time_widget.dart';
import 'package:moza_draft/widgets/dashboard_widgets/learn_path_card.dart';
import 'package:moza_draft/widgets/topics_widgets/chapter_card.dart';
import 'package:moza_draft/widgets/topics_widgets/topic_card.dart';
import 'package:moza_draft/widgets/topics_widgets/topic_main_card.dart';
import 'package:moza_draft/widgets/topics_widgets/topics_grid.dart';

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: TopicDetails()
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}