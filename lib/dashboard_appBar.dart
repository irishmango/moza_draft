import 'package:flutter/material.dart';

class DashboardAppbar extends StatelessWidget {
  const DashboardAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 24),
      child: 
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/img/avatar_profile.png'),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("WELCOME BACK!", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),),
              Text("Johannes S.", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(width: 12),
          Container(
            width: 98,
            height: 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(5), bottomLeft: Radius.circular(5), bottomRight: Radius.circular(16)),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight, 
                stops: [0.5, 1],
                colors: [Color(0xFFFF6B1B), Color(0xFFFFE649)])
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.diamond_outlined, color: Colors.black,),
                SizedBox(width: 6),
                Text("8300XP", style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),),

              ],
            ),
          )

        ],
      )
      );
  }
}