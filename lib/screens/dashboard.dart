import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:moza_draft/dashboard_appBar.dart';
import 'package:moza_draft/learn_path_card.dart';
import 'package:moza_draft/nav_bar.dart';
import 'package:moza_draft/topics_grid.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/img/icon_background.png'),
            ),
          ),

          // Blur layer
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
              child: Container(
                color: Colors.white.withValues(alpha: 0.05), 
              ),
            ),
          ),

          // Foreground
          Padding(
            padding: const EdgeInsets.only(top: 42, left: 8, right: 8),
            child: Column(
              children: const [
                DashboardAppbar(),
                LearnPathCard(),
                TopicsGrid(),
              ],
            ),
          ),

          // Navigation bar
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: NavBar(),
          ),
        ],
      ),
    );
  }
}