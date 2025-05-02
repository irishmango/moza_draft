import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:moza_draft/theme/theme.dart';
import 'package:moza_draft/src/shared/menu_background.dart';
import 'package:moza_draft/src/widgets/page_title_nav.dart';
import 'package:moza_draft/src/widgets/fortune_spinner.dart';

class QuizWheelScreen extends StatefulWidget {
  const QuizWheelScreen({super.key});

  @override
  State<QuizWheelScreen> createState() => _QuizWheelScreenState();
}

class _QuizWheelScreenState extends State<QuizWheelScreen> {
  final StreamController<int> controller = StreamController<int>();
  final _random = Random();

  final List<String> topics = [
    "Cadences",
    "Chords",
    "Scales",
    "Music 101",
    "Analysis",
    "Modulation",
    "Intervals"
  ];

  void spinWheel() {
    final selectedIndex = _random.nextInt(topics.length);
    controller.add(selectedIndex);
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const MenuBackground(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
            child: Column(
              children: [
                PageTitleNav(title: "", leftIcon: Icon(Icons.chevron_left, size: 36,),),
                const SizedBox(height: 80),
                const Text(
                  "Spin to Learn!",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 48,
                  width: 120,
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: AppColors.appOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: spinWheel,
                    child: const Text(
                      "Spin",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Expanded(child: SizedBox()),
                FortuneSpinner(
                  selectedIndexStream: controller.stream,
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}