import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zb_dezign/core/constant/icons_path.dart';
import 'package:zb_dezign/features/auth/controller/user_mode_controller.dart';
import 'package:zb_dezign/features/auth/widgets/auth_header.dart';
import 'package:zb_dezign/features/auth/widgets/login_button.dart';
import 'package:zb_dezign/shared/widgets/custom_container.dart';
import 'package:zb_dezign/shared/widgets/custom_text/custom_primary_text.dart';
import 'package:zb_dezign/shared/widgets/custom_text/custom_span_text.dart';

class SignupOptionView extends StatelessWidget {
  const SignupOptionView({super.key});

  @override
  Widget build(BuildContext context) {
    UserModeController userModeController = Get.find();
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AuthHeader(),
          SizedBox(height: 16.h),
          CustomSpanText(
            title: 'Already have an account? ',
            spantext: 'Login Now',
          ),
          SizedBox(height: 40.h),
          userModeController.selectedIndex.value == 0
              ? CustomPrimaryText(
                  text: 'Sign up for your personal account',
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                )
              : CustomPrimaryText(
                  text: 'Sign up for your business account',
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                ),
          SizedBox(height: 32.h),
          LoginButton(
            onTap: () {},
            icon: IconsPath.google,
            title: 'Continue With Goggle',
            radius: 12.r,
          ),
          SizedBox(height: 16.h),
          LoginButton(
            onTap: () {},
            icon: IconsPath.apple,
            title: 'Continue With Apple',
            radius: 12.r,
          ),
          SizedBox(height: 16.h),
          LoginButton(
            onTap: () {},
            icon: IconsPath.gmail,
            title: 'Continue With email',
            radius: 12.r,
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
