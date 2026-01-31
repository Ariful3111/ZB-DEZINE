import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zb_dezign/core/constant/colors.dart';

Widget optionContainer({required BuildContext context, required Widget child}) {
  return Container(
    padding: EdgeInsets.all(16.r),
    height: 66.h,
    width: MediaQuery.widthOf(context),
    decoration: BoxDecoration(
      color: Color(0xFFF1F1F1),
      borderRadius: BorderRadius.circular(16.r),
    ),
    child: child,
  );
}

Widget propertyDivider() {
  return Divider(
    color: AppColors.borderColor,
    thickness: 1,
  );
}
