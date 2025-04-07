import 'package:flutter/material.dart';

class TopicCard extends StatelessWidget {
  final String title;
  final Color color;

  const TopicCard({
    required this.title,
    required this.color,
    super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Center(
        child: Container(
          width: 162,
          height: 170,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(28),
            boxShadow: [BoxShadow(
              color: Colors.black.withValues(alpha: 0.5),
              offset: Offset(0, 4),
              spreadRadius: 0,
              blurRadius: 4,
            )
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 28, 12, 8),
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
                      (color == Color(0xFFF9AC4F) || color == Color(0xFF5CB573) || color == Color(0xFFF8765D)) 
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
      ),
    );
  }
}