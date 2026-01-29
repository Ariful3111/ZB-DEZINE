import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zb_dezign/core/constant/colors.dart';
import 'package:zb_dezign/core/constant/icons_path.dart';
import 'package:zb_dezign/features/rent/widgets/action_button.dart';
import 'package:zb_dezign/shared/widgets/custom_text/custom_primary_text.dart';
import 'package:badges/badges.dart' as badges;

class RentAppbar extends StatelessWidget {
  const RentAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(IconsPath.drawer, height: 24.h, width: 24.w),
        SizedBox(width: 8.w,),
        CustomPrimaryText(text: 'Rent'),
        Spacer(),
        ActionButton(icon: IconsPath.favorite, onTap: () {}),
        SizedBox(width: 8.w,),
        
        badges.Badge(
          badgeStyle: badges.BadgeStyle(
        badgeGradient: badges.BadgeGradient.linear(
          begin: Alignment.center,
          end: Alignment.center,
          colors: [AppColors.primaryColor,AppColors.primaryColor],
        ),
      ),
      position: badges.BadgePosition.topStart(start: 25, top: -8),
      badgeContent: CustomPrimaryText(
        text: '1',
        fontSize: 8.sp,
        color: AppColors.whiteColor,
      ),
          child:ActionButton(icon: IconsPath.cart, onTap: () {}) ,)
      ],
    );
  }
}
