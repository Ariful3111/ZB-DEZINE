import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zb_dezign/core/constant/colors.dart';
import 'package:zb_dezign/core/constant/icons_path.dart';
import 'package:zb_dezign/features/auth/widgets/login_button.dart';
import 'package:zb_dezign/shared/widgets/custom_text/custom_primary_text.dart';

class OnboardLogin extends StatelessWidget {
  final String subTitle;
  const OnboardLogin({super.key, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h,),
        LoginButton(
          onTap: () {},
          icon: IconsPath.google,
          title: 'Continue With Goggle',
           borderColor: Color(0xFFBEBEBE),
        ),
        SizedBox(height: 12.h,),
        LoginButton(
          onTap: () {},
          icon: IconsPath.apple,
          title: 'Continue With Apple',
          borderColor: Color(0xFFBEBEBE),
        ),
        SizedBox(height: 12.h,),
        LoginButton(
          onTap: () {},
          icon: IconsPath.google,
          title: 'Continue With Gmail',
          color: AppColors.primaryColor,
          fontColor: AppColors.whiteColor,
          borderColor: Colors.transparent,
        ),
        SizedBox(height: 20.h,),
        CustomPrimaryText(
          text: subTitle,
          fontSize: 14.sp,
          color: AppColors.whiteColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
