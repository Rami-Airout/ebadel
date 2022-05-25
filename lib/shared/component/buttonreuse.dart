import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class ButtonReuse extends StatelessWidget {
  const ButtonReuse({Key? key ,
  required this.onPressed,
  required this.text}) : super(key: key);
  final Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      onPress: onPressed,
      height: 50,
      width: 200,
      text: text,
      borderRadius: 20.0,
      isReverse: true,
      selectedTextColor: Colors.white,
      transitionType: TransitionType.LEFT_TOP_ROUNDER,
      textStyle: TextStyle(
        fontSize: 28,
        letterSpacing: 5,
        color: Colors.black,
        fontWeight: FontWeight.w300,
      ),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xffAEFEFF),
          Color(0xff4FBDBA),
        ],
      ) ,
      // backgroundColor: Colors.black,
      selectedGradientColor: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xff35858B),
          Color(0xff072227),
        ],
      ),
    );
  }
}

