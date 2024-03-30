import 'package:flutter/material.dart';
import 'package:spotify_clone_project/Widgets/button_widget.dart';
// import 'package:get/get.dart';
import 'package:spotify_clone_project/utils/appThemes.dart';
import '../../../Widgets/button.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Style.accentColor,
        body: Stack(
          children: [
            Container(
              // color: Colors.amber,
              child: Image.asset(
                "images/logoUIN.png",
                width: double.infinity,
              ),
            ),
            Container(
              // color: Color.fromRGBO(33, 33, 33, 50),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Style.accentColor, Style.accentColor, Color.fromRGBO(33, 33, 33, 80), Colors.transparent]),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.wifi,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Millions of Songs. \nFree on Spotify.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ButtonLogin("Sign Up Free", Icons.abc, true, 0, Style.primaryColor),
                    SizedBox(height: 10),
                    //button widget kalo pake container, jangan lupa border circular radius, width, sm height disamain kayak yang di figma. urusan responsive apa engga nanti ae dulu
                    InkWell(
                      child: ButtonWidget(
                          textButton: "Continue With Google", iconButton: Icons.alarm, colorButton: Colors.transparent, isCenter: false, sizeBox: 50),
                      onTap: () {},
                    ),
                    SizedBox(height: 10),
                    ButtonLogin("Continue With Facebook", Icons.account_balance, false, 40, Colors.transparent),
                    SizedBox(height: 10),
                    ButtonLogin(
                      'Continue With Apple',
                      Icons.apple,
                      false,
                      40,
                      Colors.transparent,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Log in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
