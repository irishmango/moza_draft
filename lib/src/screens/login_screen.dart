import 'package:flutter/material.dart';
import 'package:moza_draft/src/widgets/dashboard_widgets/login_card.dart';
import 'package:moza_draft/theme/theme.dart';
import 'package:moza_draft/src/shared/login_background.dart';
import 'package:sign_in_button/sign_in_button.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background
          LoginBackground(),


          // Foreground
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 200,),
                Text("Welcome Back!", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, height: 1),),
                Text("Login to your\naccount", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, height: 1)),
                SizedBox(height: 12),
                LoginCard(),
                SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "Or",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                        ],
                      )
                ),
                SizedBox(height: 25,),
                Center(
                  child: SizedBox(
                    child: Column(
                      children: [
                        SignInButton(Buttons.google, onPressed: () {}),
                        SignInButton(Buttons.apple, onPressed: () {}), 
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24,),
                Center(
                  child: TextButton(
                    onPressed: () {
                      
                    },
                    child: Text("Create your account here", style: TextStyle(color: AppColors.appBlue, decoration: TextDecoration.underline),
                    
                    )),
                )
                           
              ],
            ),
          )
        ]
      )
    );
  }
}
        


        //  Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Column(
        //       children: [
        //         Text("Welcome Back!"),
        //         Text("Login to Your Account")
        //       ],
        //     ),
        //   ),