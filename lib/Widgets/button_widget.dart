import 'package:flutter/material.dart';
import 'package:spotify_clone_project/utils/appThemes.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, this.textButton, this.iconButton, this.isCenter, this.sizeBox = 0, this.colorButton});
  final IconData? iconButton;
  final String? textButton;
  final bool? isCenter;
  final double sizeBox;
  final Color? colorButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 50,
      width: 337,
      decoration: BoxDecoration(color: Style.accentColor, borderRadius: BorderRadius.circular(30), border: Border.all(color: Colors.white)),
      child: Row(
        children: [
          Icon(iconButton != null ? iconButton : null),
          SizedBox(width: sizeBox),
          Text(
            textButton!,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: colorButton != Colors.transparent ? Colors.black : Colors.white),
          ),
        ],
      ),
    );
  }
}
