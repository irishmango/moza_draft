import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:moza_draft/dashboard_appBar.dart';
import 'package:moza_draft/learn_path_card.dart';
import 'package:moza_draft/nav_bar.dart';
import 'package:moza_draft/screens/dashboard.dart';
import 'package:moza_draft/topic_card.dart';
import 'package:moza_draft/topics_grid.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardScreen()
    );
  }
}