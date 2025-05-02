import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class FortuneSpinner extends StatelessWidget {
  final List<String> items = ["Cadences", "Chords", "Scales", "Music 101", "Analysis", "Modulation", "Intervals"];
  final Stream<int> selectedIndexStream;
  final double height;

  FortuneSpinner({
    required this.selectedIndexStream,
    this.height = 300,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: FortuneWheel(
        selected: selectedIndexStream,
        items: [
          for (var item in items) FortuneItem(child: Text(item)),
        ],
        animateFirst: false,
      ),
    );
  }
}