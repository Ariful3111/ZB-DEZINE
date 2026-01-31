import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zb_dezign/core/constant/colors.dart';
import 'package:zb_dezign/core/constant/icons_path.dart';
import 'package:zb_dezign/features/auth/controller/signin_controller.dart';
import 'package:zb_dezign/shared/extensions/validators/email_validator.dart';
import 'package:zb_dezign/shared/extensions/validators/password_validator.dart';
import 'package:zb_dezign/shared/widgets/custom_form_field/custom_text_form_field.dart';
import 'package:zb_dezign/shared/widgets/custom_text/custom_primary_text.dart';

class SigninForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const SigninForm({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    SigninController signinController = Get.find();
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text(text: 'Email Address'),
          SizedBox(height: 8.h),
          CustomTextFormField(
            controller: signinController.email,
            labelText: 'Enter your email',
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Image.asset(IconsPath.email, height: 20.h, width: 20.w),
            ),
            validation: AutovalidateMode.onUserInteraction,
            validator: emailValidation,
          ),
          SizedBox(height: 20.h),
           text(text: 'Password'),
          SizedBox(height: 8.h),
          CustomTextFormField(
            controller: signinController.password,
            labelText: 'Enter your Password',
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Image.asset(IconsPath.pass, height: 20.h, width: 20.w),
            ),
            validation: AutovalidateMode.onUserInteraction,
            validator: passwordValidation,
          ),
          SizedBox(height: 4.h),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: CustomPrimaryText(text: 'Forgot Password?', fontSize: 14.sp),
            ),
          ),
        ],
      ),
    );
  }

  Widget text({required String text}) {
    return CustomPrimaryText(
      text: text,
      fontSize: 16.sp,
      color: AppColors.buttonTextColor,
    );
  }
}
