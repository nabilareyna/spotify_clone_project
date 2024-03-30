import 'package:flutter/material.dart';
// import 'package:spotify_clone_project/utils/buttonStyle/styleButton.dart';

// ignore: must_be_immutable
class ButtonLogin extends StatelessWidget {
  final IconData? iconButton;
  final String nameButtom;
  final bool isCenter;
  final double sizeBox;
  final Color colorButton;

  ButtonLogin(this.nameButtom, this.iconButton, this.isCenter, this.sizeBox,
      this.colorButton);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
              minimumSize: MaterialStatePropertyAll(Size(200, 50)),
              maximumSize: MaterialStatePropertyAll(Size(300, 50)),
              elevation: MaterialStatePropertyAll(1),
              backgroundColor: MaterialStatePropertyAll(colorButton),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: colorButton != Colors.transparent
                      ? BorderSide.none
                      : BorderSide(color: Colors.white, width: 2),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment:
                  isCenter ? MainAxisAlignment.center : MainAxisAlignment.start,
              children: [
                Icon(iconButton != null ? iconButton : null),
                SizedBox(width: sizeBox),
                Text(
                  nameButtom,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: colorButton != Colors.transparent
                          ? Colors.black
                          : Colors.white),
                ),
              ],
            )),
      ],
    );
  }
}
