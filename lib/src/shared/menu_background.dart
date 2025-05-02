import 'dart:ui';
import 'package:flutter/material.dart';

class MenuBackground extends StatelessWidget {
  const MenuBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
        ]
    );
  }
}