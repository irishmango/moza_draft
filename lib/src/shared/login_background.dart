import 'dart:ui';
import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {
  const LoginBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 80),
              child: Image.asset('assets/img/login_background.png'),
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