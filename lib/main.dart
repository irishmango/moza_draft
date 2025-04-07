import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:moza_draft/widgets/dashboard_appBar.dart';
import 'package:moza_draft/widgets/learn_path_card.dart';
import 'package:moza_draft/widgets/nav_bar.dart';
import 'package:moza_draft/screens/dashboard.dart';
import 'package:moza_draft/screens/topics_screen.dart';
import 'package:moza_draft/widgets/topic_card.dart';
import 'package:moza_draft/widgets/topics_grid.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: 
      // DashboardScreen()
      TopicsScreen()
      
    );
  }
}