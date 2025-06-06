import 'package:flutter/material.dart';
import 'package:moza_draft/src/screens/topics_all.dart';
import 'package:moza_draft/src/widgets/dashboard_widgets/dashboard_app_bar.dart';
import 'package:moza_draft/src/widgets/dashboard_widgets/gym_time_widget.dart';
import 'package:moza_draft/src/widgets/dashboard_widgets/learn_path_card.dart';
import 'package:moza_draft/src/widgets/header_expand.dart';
import 'package:moza_draft/src/shared/menu_background.dart';
import 'package:moza_draft/src/widgets/nav_bar.dart';
import 'package:moza_draft/src/widgets/topics_widgets/topics_grid.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background
          MenuBackground(),

          // Foreground
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 42, horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  DashboardAppbar(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(12, 0, 12, 12),
                    child: Column(
                      children: [
                        LearnPathCard(),
                        SizedBox(height: 12,),
                        HeaderExpand(title: "Topics to Learn", path: () => TopicsScreen(),),
                        TopicsGrid(limit: 4),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Improvement Area',
                            style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                                          ),),
                        ),
                        SizedBox(height: 8,),
                        GymTimeWidget(),
                        SizedBox(height: 65,)
                      ],
                    ),
                  )
                  
                ],
              ),
            ),
          ),

          // Navigation bar
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: NavBar(),
          ),
          const Positioned(child: 
          SizedBox(height: 8))
        ],
      ),
    );
  }
}
