import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zb_dezign/core/constant/colors.dart';
import 'package:zb_dezign/features/auth/widgets/onboard_login.dart';
import 'package:zb_dezign/shared/widgets/custom_button/custom_primary_button.dart';
import 'package:zb_dezign/shared/widgets/custom_text/custom_primary_text.dart';

class OnboardingFooter extends StatelessWidget {
  final String title;
  final String subTitle;
  final VoidCallback onTap;
  final bool isLast;
  const OnboardingFooter({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onTap,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomPrimaryText(
          text: title,
          fontSize: 34.sp,
          fontWeight: FontWeight.w700,
          color: AppColors.whiteColor,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 11.h),

        isLast
            ? OnboardLogin(subTitle: subTitle,)
            : Column(
                children: [
                  CustomPrimaryText(
                    text: subTitle,
                    fontSize: 14.sp,
                    color: AppColors.whiteColor,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 38.h),
                  CustomPrimaryButton(
                    text: 'Next',
                    onPressed: onTap,
                    fontWeight: FontWeight.w600,
                    backgroundColor: AppColors.whiteColor,
                    textColor: AppColors.primaryColor,
                  ),
                ],
              ),
      ],
    );
  }
}
