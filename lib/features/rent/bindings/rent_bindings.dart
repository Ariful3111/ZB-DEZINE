import 'package:get/get.dart';
import 'package:zb_dezign/features/rent/controller/rent_business_identification_controller.dart';

class RentBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RentBusinessIdentificationController());
  }
}
