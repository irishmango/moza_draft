import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(padding: EdgeInsets.all(8),
          child: Container(
            width: 286,
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            color: Color(0xFFFFFFFF).withValues(alpha: 0.75),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home, color: Colors.black,
                ),
                Icon(Icons.bookmark, color: Colors.black,
                ),
                Icon(Icons.anchor, color: Colors.black, // placeholder anchor icon
                ),
                Icon(Icons.person_2_rounded, color: Colors.black,
                ),
              ],
          
            ),
          ),),
        ],
      ),
    );
  }
}