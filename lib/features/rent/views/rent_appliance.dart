import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zb_dezign/features/rent/controller/rent_business_identification_controller.dart';
import 'package:zb_dezign/features/rent/widgets/page_count.dart';
import 'package:zb_dezign/features/rent/widgets/rent_appliance_widgets/rent_appliance_widgets.dart';
import 'package:zb_dezign/features/rent/widgets/rent_container.dart';

class RentAppliance extends StatelessWidget {
  const RentAppliance({super.key});

  @override
  Widget build(BuildContext context) {
    RentBusinessIdentificationController controller = Get.find();
    return Column(
      children: [
        RentContainer(
          child: PageCount(
            text: 'Furniture Requirements',
            pageCount: controller.currentIndex.value.toString(),
          ),
        ),
        SizedBox(height: 20.h,),
        RentApplianceWidgets()
      ],
    );
  }
}