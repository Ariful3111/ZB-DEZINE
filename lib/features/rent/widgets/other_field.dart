import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zb_dezign/core/constant/colors.dart';
import 'package:zb_dezign/shared/widgets/custom_form_field/custom_text_form_field.dart';

class OtherField extends StatelessWidget {
  final TextEditingController controller;
  final bool readOnly;
  const OtherField({super.key, required this.controller, required this.readOnly});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 36.h,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color(0xFFE4E5E7).withValues(alpha: 0.24),
            offset: Offset(0, 1),
            blurRadius: 2,
          )
        ]),
        child: CustomTextFormField(
          controller: controller,
          borderColor: Color(0xFFE2E4E9),
          labelText: 'Other',
          labelColor: Color(0xFF42526D),
          labelFontSize: 12.sp,
          padding: EdgeInsets.zero,
          fillColor: AppColors.whiteColor,
          readOnly: readOnly,
        ),
      ),
    );
  }
}
