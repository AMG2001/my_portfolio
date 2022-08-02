import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/const_colors.dart';

class HoveredButton extends StatelessWidget {
  String buttonText;
  Function() buttonFunction;
  HoveredButton({required this.buttonText, required this.buttonFunction});
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: ((context, setState) {
        bool isHovered = false;
        return MouseRegion(
          onEnter: (event) {
            setState(() {
              print("is Hovered!!");
              isHovered = true;
            });
          },
          onExit: (event) {
            setState(() {
              isHovered = false;
            });
          },
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                isHovered ? ConstColors.defaultOrange: Colors.white,
              ),
              foregroundColor: MaterialStateProperty.all(
                isHovered ? ConstColors.defaultOrange : Colors.black,
              ),
            ),
            onPressed: buttonFunction,
            child: Text(
              buttonText,
            ),
          ),
        );
      }),
    );
  }
}
