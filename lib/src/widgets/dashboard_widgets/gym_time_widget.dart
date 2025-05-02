import 'package:flutter/material.dart';

class GymTimeWidget extends StatelessWidget {
  const GymTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(28)),
        color: Colors.white,
        boxShadow: [BoxShadow(
              color: Colors.black.withValues(alpha: 0.4),
              offset: Offset(0, 4),
              spreadRadius: 0,
              blurRadius: 4,
            )
        ]
      ),
      width: double.infinity,
      height: 171,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
        child: Stack(
          children: [
            Positioned(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Gym Time", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold)),
                  Text("Let's look at where\nyou can improve", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600))
                ],
              ),
            ),
            Positioned(
              bottom: 16,
              right: 8,
              
                
                child: Image.asset('assets/img/gym_logo.png', width: 136,))
 
            
          ],
        )
            
      )
    );
}
}

