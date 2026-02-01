import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zb_dezign/core/constant/colors.dart';

class RentContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final double? radius;
  const RentContainer({super.key, required this.child, this.padding, this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:padding?? EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
      width: MediaQuery.widthOf(context),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(radius?? 24.r),
      ),
      child: child,
    );
  }
}
