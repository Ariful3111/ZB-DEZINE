import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zb_dezign/core/constant/colors.dart';
import 'package:zb_dezign/features/rent/controller/rent_business_identification_controller.dart';
import 'package:zb_dezign/features/rent/widgets/rent_business_widgets/rent_appbar.dart';
import 'package:zb_dezign/features/rent/widgets/rent_business_widgets/rent_business_identification_header.dart';
import 'package:zb_dezign/features/rent/widgets/rent_helper.dart';
import 'package:zb_dezign/features/rent/widgets/step_count.dart';
import 'package:zb_dezign/shared/widgets/custom_container.dart';
import 'package:zb_dezign/shared/widgets/custom_text/custom_primary_text.dart';

class RentBusinessIdentification extends StatelessWidget {
  const RentBusinessIdentification({super.key});

  @override
  Widget build(BuildContext context) {
    RentBusinessIdentificationController controller = Get.find();
    return CustomContainer(
      child: CustomScrollView(
        slivers: [
          RentAppbar(),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: 32.h),
              RentBusinessIdentificationHeader(),
              SizedBox(height: 16.h),
              Obx(() => controller.rentWidgets[controller.currentIndex.value]),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  myButton(
                    border: Border.all(color: Color(0xFFD1D7E0), width: 1.r),
                    onTap: () {
                      if (controller.currentIndex.value > 0) {
                        controller.currentIndex.value--;
                      }
                    },
                    child: CustomPrimaryText(
                      text: 'Previous',
                      fontSize: 12.sp,
                      color: AppColors.labelColor,
                    ),
                  ),
                  Obx(
                    () => controller.currentIndex.value > 0
                        ? StepCount()
                        : SizedBox.shrink(),
                  ),
                  Obx(() {
                    final isLast =
                        controller.currentIndex.value <
                        controller.rentWidgets.length - 1;
                    return myButton(
                      color: AppColors.primaryColor,
                      onTap: () {
                        if (isLast) {
                          controller.currentIndex.value++;
                        }
                      },
                      child: Row(
                       
                        children: [
                          CustomPrimaryText(
                            text: 'Next',
                            fontSize: 14.sp,
                            color: AppColors.whiteColor,
                          ),
                          SizedBox(width: 6.w,),
                          Icon(
                            Icons.arrow_forward,
                            size: 12.r,
                            color: AppColors.whiteColor,
                          ),
                        ],
                      ),
                    );
                  }),
                ],
              ),
              SizedBox(height: 20.h),
            ]),
          ),
        ],
      ),
    );
  }

  
}
