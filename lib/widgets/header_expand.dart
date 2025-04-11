import 'package:flutter/material.dart';
import 'package:moza_draft/screens/dashboard_screen.dart';
import 'package:moza_draft/theme.dart';


class HeaderExpand extends StatelessWidget {

  final String? title;

  const HeaderExpand({
    this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.start,
     children: [
       Text(title ?? "",
         style: TextStyle(
           fontSize: 28,
           fontWeight: FontWeight.bold,
         ),),
       Expanded(child: SizedBox()),
         InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (ctx) => DashboardScreen()));
          },
           child: Row(
            //  mainAxisSize: MainAxisSize.min,
             children: [
               Text('See all',
                 style: TextStyle(
                   fontSize: 24,
                   fontWeight: FontWeight.bold,
                   color: AppColors.appGreen,
                 ),),
                 SizedBox(width: 8,),
                 Icon(
                   Icons.arrow_outward,
                   color: AppColors.appGreen,
                   size: 28,
                 )
             ],
           ),
         ),
     ],
                          );
  }
}