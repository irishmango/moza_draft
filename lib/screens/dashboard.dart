import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:moza_draft/widgets/dashboard_appBar.dart';
import 'package:moza_draft/widgets/learn_path_card.dart';
import 'package:moza_draft/widgets/menu_background.dart';
import 'package:moza_draft/widgets/nav_bar.dart';
import 'package:moza_draft/widgets/topics_grid.dart';

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
            padding: const EdgeInsets.only(top: 42, left: 8, right: 8),
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  DashboardAppbar(),
                  LearnPathCard(),
                  TopicsGrid(),
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
          SizedBox(height: 8,))
        ],
      ),
    );
  }
}