import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zb_dezign/core/constant/colors.dart';
import 'package:zb_dezign/core/constant/icons_path.dart';
import 'package:zb_dezign/features/auth/controller/signup_controller.dart';
import 'package:zb_dezign/features/auth/controller/user_mode_controller.dart';
import 'package:zb_dezign/shared/extensions/validators/email_validator.dart';
import 'package:zb_dezign/shared/extensions/validators/name_validator.dart';
import 'package:zb_dezign/shared/extensions/validators/password_validator.dart';
import 'package:zb_dezign/shared/extensions/validators/phone_validator.dart';
import 'package:zb_dezign/shared/widgets/custom_form_field/custom_text_form_field.dart';
import 'package:zb_dezign/shared/widgets/custom_text/custom_primary_text.dart';

class SignupForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const SignupForm({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    SignupController signupController = Get.find();
    UserModeController userModeController = Get.find();
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          field(
            text: 'Full Name *',
            labelText: userModeController.selectedIndex.value == 0
                ? 'Enter your  name'
                : 'Enter your business name',
            controller: signupController.nameController,
            icon:userModeController.selectedIndex.value==0? IconsPath.user:IconsPath.bag,
            validation: AutovalidateMode.onUserInteraction,
            validator: nameValidation,
          ),
          SizedBox(height: 22.h),
          field(
            text: 'Email *',
            labelText:userModeController.selectedIndex.value==0? 'Enter your email':'Enter your business email',
            controller: signupController.emailController,
            icon: IconsPath.email,
            validation: AutovalidateMode.onUserInteraction,
            validator: emailValidation,
          ),
          SizedBox(height: 22.h),
          field(
            text: 'Password *',
            labelText: 'Enter your password',
            controller: signupController.passwordController,
            icon: IconsPath.pass,
            validation: AutovalidateMode.onUserInteraction,
            validator: passwordValidation,
          ),
          SizedBox(height: 22.h),
          field(
            text: 'Phone Number *',
            labelText:userModeController.selectedIndex.value==0? 'Enter your phone number':'Enter your business phone number',
            controller: signupController.phoneController,
            icon: IconsPath.phone,
            validation: AutovalidateMode.onUserInteraction,
            validator: phoneValidation
          ),
         if (userModeController.selectedIndex.value == 1)  SizedBox(height: 22.h),
          if (userModeController.selectedIndex.value == 1)
            field(
              text: 'ABN Number *',
              labelText: 'Enter ABN number',
              controller: signupController.abnController,
              icon: IconsPath.file,
              validation: AutovalidateMode.onUserInteraction,
            ),
        ],
      ),
    );
  }

  Widget field({
    required String text,
    required String labelText,
    required TextEditingController controller,
    required String icon,
    String? Function(String?)? validator,
    AutovalidateMode? validation

  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomPrimaryText(
          text: text,
          fontSize: 16.sp,
          color: AppColors.buttonTextColor,
        ),
        SizedBox(height: 8.h),
        CustomTextFormField(
          controller: controller,
          labelText: labelText,
          prefixIcon: Image.asset(icon, height: 20.h, width: 20.w),
          validation: validation,
          validator: validator,
        ),
      ],
    );
  }
}
