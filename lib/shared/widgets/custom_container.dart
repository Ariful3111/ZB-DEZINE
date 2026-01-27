import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zb_dezign/core/constant/colors.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  const CustomContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        height: MediaQuery.heightOf(context),
        width: MediaQuery.widthOf(context),
        decoration: BoxDecoration(gradient: AppColors.primaryBG),
        child: SafeArea(child: child),
      ),
    );
  }
}
