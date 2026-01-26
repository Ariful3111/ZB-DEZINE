import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:zb_dezign/core/constant/colors.dart';

class HeaderButton extends StatelessWidget {
  final double height;
  final double width;
  final double radius;
  final Widget child;
  const HeaderButton({
    super.key,
    required this.height,
    required this.width,
    required this.child,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      width: width,
      height: height,
      borderRadius: radius,
      blur: 80,
      alignment: Alignment.center,
      border: 0.5,
      linearGradient: LinearGradient(
        colors: [
          AppColors.darkColor.withValues(alpha: 0.2),
          AppColors.darkColor.withValues(alpha: 0.2),
        ],
      ),
      borderGradient: LinearGradient(
        colors: [
          AppColors.whiteColor.withValues(alpha: 0.3),
          AppColors.whiteColor.withValues(alpha: 0.1),
        ],
      ),
      child: Center(child: child),
    );
  }
}
