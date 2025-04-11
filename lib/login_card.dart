import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moza_draft/theme.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 230,
                          decoration: BoxDecoration(
                            color: AppColors.appBlue,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(24), bottomRight: Radius.circular(24)),
                            boxShadow: [BoxShadow(
                                          color: Color(0x19000000),
                                          blurRadius: 22,
                                          offset: Offset(0, 10),
                                          spreadRadius: 0,
                                          ),
                                          BoxShadow(
                                          color: Color(0x16000000),
                                          blurRadius: 40,
                                          offset: Offset(0, 40),
                                          spreadRadius: 0,
                                          ),
                                          BoxShadow(
                                          color: Color(0x0C000000),
                                          blurRadius: 55,
                                          offset: Offset(0, 91),
                                          spreadRadius: 0,
                                          ),
                                          BoxShadow(
                                          color: Color(0x02000000),
                                          blurRadius: 65,
                                          offset: Offset(0, 162),
                                          spreadRadius: 0,
                                          ),
                                          BoxShadow(
                                          color: Color(0x00000000),
                                          blurRadius: 71,
                                          offset: Offset(0, 253),
                                          spreadRadius: 0,
                                          )]
                                        ),
                          
                                      ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                          child: Column(
                            spacing: 8,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Your Email", style: TextStyle(color: AppColors.appWhite, fontSize: 20, ),),
                              SizedBox(
                                height: 42,
                                child: TextField(
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 16, top: 14),
                                    hintText: "Enter Your Email",
                                    hintStyle: GoogleFonts.nunito(
                                      textStyle: TextStyle(color: Colors.grey.withAlpha(100), fontSize: 16)
                                    ),
                                    filled: true,
                                    fillColor: AppColors.appWhite,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide.none 
                                    )
                                  ),
                                ),
                              ),
                              Text("Password", style: TextStyle(color: AppColors.appWhite, fontSize: 20)),
                              SizedBox(
                                height: 42,
                                child: TextField(
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 16, top: 14),
                                    hintText: "Enter Your Email",
                                    hintStyle: TextStyle(color: Colors.grey.withAlpha(100), fontSize: 16),
                                    filled: true,
                                    fillColor: AppColors.appWhite,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide.none 
                                    )
                                  ),
                                ),
                              ),
                              
                            ],
                          ),
                        )
                      ]
                    ),
                    SizedBox(height: 25),
                    Center(child: 
                    Container(
                      width: 190,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        color: AppColors.appOrange
                      ),
                    child: TextButton(
                    onPressed: () {}, 
                    child: Text("Sign In", style: TextStyle(color: AppColors.appWhite, fontSize: 20, fontWeight: FontWeight.bold),)))),
                  ],
                
              );
  }
}