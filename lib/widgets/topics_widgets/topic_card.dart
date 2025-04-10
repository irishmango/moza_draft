import 'package:flutter/material.dart';
import 'package:moza_draft/theme.dart';

class TopicCard extends StatelessWidget {
  final String title;
  final Color color;

  const TopicCard({
    required this.title,
    required this.color,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // width: 162,
        // height: 170,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(28),
          boxShadow: [BoxShadow(
            color: Colors.black.withValues(alpha: 0.4),
            offset: Offset(0, 4),
            spreadRadius: 0,
            blurRadius: 4,
          )
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 20, 12, 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),)
                ],
              ),
              SizedBox(height: 24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    (color == AppColors.appOrange || color == AppColors.appGreen || color == AppColors.appRed) 
                        ? 'assets/img/moza_logo_white.png'
                        : 'assets/img/moza_logo_yellow.png',
                    width: 65,
                    height: 65,
                  ),
                ],
              )
            ]
          ),
        )
      ),
    );
  }
}