import 'package:flutter/material.dart';
import 'package:moza_draft/theme.dart';
import 'package:moza_draft/widgets/dashboard_widgets/xp_tile.dart';
import 'package:moza_draft/widgets/menu_background.dart';
import 'package:moza_draft/widgets/page_title_nav.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background
          MenuBackground(),

          // Foreground
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
                  child: Column(
                    children: [
                      PageTitleNav(title: "Profile", leftIcon: Icon(Icons.chevron_left, size: 36,), rightIcon: Icon(Icons.settings, size: 36,),),
                      SizedBox(height: 6,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(radius: 71, backgroundImage: AssetImage('assets/img/avatar_profile.png'),),
                          SizedBox(height: 16,),
                          Text("Shokri Francis", style: Theme.of(context).textTheme.headlineLarge,),
                          SizedBox(height: 16,),
                          XPTile(),
                          SizedBox(height: 25,),
                          Container(
                            width: double.infinity,
                            height: 420,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(24), bottomRight: Radius.circular(24)),
                              color: AppColors.appRed.withAlpha(120)
                            ),
                            child: Column(
                              
                              children: [
                                Text("My Badges", style: TextStyle(color: AppColors.appWhite, fontSize: 28, fontWeight: FontWeight.bold)),
                                GridView.count(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 26,
                                  mainAxisSpacing: 26,
                                  padding: EdgeInsets.all(24),
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  children: [
                                    GridTile(child: 
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        color: AppColors.appWhite
                                      )
                                    )),
                                    GridTile(child: 
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        color: AppColors.appWhite
                                      )
                                    )),
                                    GridTile(child: 
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        color: AppColors.appWhite
                                      )
                                    )),
                                    GridTile(child: 
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        color: AppColors.appWhite
                                      )
                                    )),
                                    GridTile(child: 
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        color: AppColors.appWhite
                                      )
                                    )),
                                    GridTile(child: 
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        color: AppColors.appWhite
                                      )
                                    )),
                                    GridTile(child: 
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        color: AppColors.appWhite
                                      )
                                    )),
                                    GridTile(child: 
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        color: AppColors.appWhite
                                      )
                                    )),
                                    GridTile(child: 
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(12)),
                                        color: AppColors.appWhite
                                      )
                                    )),
                                    
                                  ],
                                  
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12,),
                          Container(
                            width: double.infinity,
                            height: 420,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(24), bottomRight: Radius.circular(24)),
                              color: AppColors.appGreen.withAlpha(120)
                            ),
                            child: Column()
                          ),
                          
                        ],
                      )
                    ]
                  )
                )
              ]
            )
          )
        ]
      )
    );
  }
}