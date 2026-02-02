import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zb_dezign/features/rent/widgets/page_count.dart';
import 'package:zb_dezign/features/rent/widgets/rent_container.dart';
import 'package:zb_dezign/features/rent/widgets/rent_furniture_widgets/rent_furniture_widgets.dart';

class RentFurniture extends StatelessWidget {
  const RentFurniture({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RentContainer(child: PageCount(text: 'Furniture Requirements')),
        SizedBox(height: 20.h),
        RentFurnitureWidgets(),
      ],
    );
  }
}
