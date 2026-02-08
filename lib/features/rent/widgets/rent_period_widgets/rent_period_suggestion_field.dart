import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zb_dezign/core/constant/colors.dart';
import 'package:zb_dezign/core/constant/icons_path.dart';
import 'package:zb_dezign/features/rent/controller/rent_period_controller.dart';
import 'package:zb_dezign/shared/widgets/custom_text/custom_primary_text.dart';

class RentPeriodSuggestionField extends StatelessWidget {
  const RentPeriodSuggestionField({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<RentPeriodController>();
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: const Color(0xFFF4F6F8),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          Image.asset(IconsPath.edit, width: 20.w, height: 20.h),
          SizedBox(width: 12.w),
          CustomPrimaryText(
            text: 'Custom',
            fontSize: 16.sp,
            color: AppColors.labelColor,
          ),
        ],
      ),
    );
  }
}
