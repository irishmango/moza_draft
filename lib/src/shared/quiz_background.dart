import 'dart:ui';
import 'package:flutter/material.dart';

class QuizBackground extends StatelessWidget {
  const QuizBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Expanded(
              child: Image.asset('assets/img/orange_wave_bg.png',
              fit: BoxFit.fitHeight
              ,
              alignment: Alignment.bottomCenter,),
            ),
          ),

          // Blur layer
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.white.withValues(alpha: 0.05), 
              ),
            ),
          ),
          

        ]
    );
  }
}