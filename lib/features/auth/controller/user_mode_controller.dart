import 'package:get/state_manager.dart';
import 'package:zb_dezign/core/constant/icons_path.dart';

class UserModeController extends GetxController {
  RxInt selectedIndex = 0.obs;
  List userItem = [
    {
      'icon': IconsPath.person,
      'title': 'Personal Account',
      'subTitle': 'Buy, rent, or sell furniture for personal use',
    },
    {
      'icon': IconsPath.business,
      'title': 'Business Account',
      'subTitle': 'For offices,  hotels & organizations',
    },
  ];
}
