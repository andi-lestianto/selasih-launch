import 'package:flutter/material.dart';
import 'package:selasih_launch/app/theme/color_theme.dart';

class GradientTextWidget extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  const GradientTextWidget(
      {super.key, required this.text, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: ClrTheme.gradPrimary)
            .createShader(bounds);
      },
      child: AnimatedDefaultTextStyle(
        style: textStyle,
        duration: const Duration(seconds: 1),
        child: Text(
          text,
        ),
      ),
    );
  }
}
