import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zb_dezign/core/constant/icons_path.dart';
import 'package:zb_dezign/features/rent/controller/rent_floor_plan_controller.dart';
import 'package:zb_dezign/features/rent/widgets/property_image.dart';
import 'package:zb_dezign/features/rent/widgets/rent_property_widgets/property_details_field.dart';
import 'package:zb_dezign/shared/widgets/custom_text/custom_primary_text.dart';

class OfficeFloor extends StatelessWidget {
  const OfficeFloor({super.key});

  @override
  Widget build(BuildContext context) {
    RentFloorPlanController rentFloorPlanController = Get.find();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        myField(
          text: 'Length',
          controller: rentFloorPlanController.lengthController,
          labelText: 'Enter Length',
        ),
        SizedBox(height: 10.h),
        myField(
          text: 'Width',
          controller: rentFloorPlanController.widthController,
          labelText: 'Enter Length',
        ),
        SizedBox(height: 26.h),
        PropertyImage(
          title: 'Drag & drop your floorplan here, or click to browse',
          onTap: () {},
        ),
        SizedBox(height: 26.h),
        Container(
          padding: EdgeInsets.all(16.r),
          width: MediaQuery.widthOf(context),
          decoration: BoxDecoration(
            color: Color(0xFFFEFCE8),
            border: Border.all(width: 1.2.r, color: Color(0xFFFFF085)),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Row(
            children: [
              Image.asset(
                IconsPath.info,
                height: 20.h,
                width: 20.w,
                color: Color(0xFFD08700),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: CustomPrimaryText(
                  text:
                      ' Measurements are approximate  final layout and pricing may vary slightly',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF733E0A),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
