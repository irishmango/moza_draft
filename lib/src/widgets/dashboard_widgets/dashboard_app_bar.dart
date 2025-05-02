import 'package:flutter/material.dart';
import 'package:moza_draft/theme/theme.dart';
import 'package:moza_draft/src/widgets/dashboard_widgets/xp_tile.dart';

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
          Expanded(child: SizedBox(width: 12)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("WELCOME BACK!", style: TextStyle(color: AppColors.textColor, fontSize: 20, fontWeight: FontWeight.w600),),
              Text("Shokri Francis", style: TextStyle(color: AppColors.textColor, fontSize: 20, fontWeight: FontWeight.bold),),
            ],
          ),
          Expanded(child: SizedBox(width: 12)),
          XPTile()
    
        ],
      )
      );
  }
}

