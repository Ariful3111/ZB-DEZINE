import 'package:get/get.dart';
import 'package:zb_dezign/features/rent/controller/rent_appliance_controller.dart';
import 'package:zb_dezign/features/rent/controller/rent_brand_controller.dart';
import 'package:zb_dezign/features/rent/controller/rent_business_identification_controller.dart';
import 'package:zb_dezign/features/rent/controller/rent_delivery_controller.dart';
import 'package:zb_dezign/features/rent/controller/rent_floor_plan_controller.dart';
import 'package:zb_dezign/features/rent/controller/rent_furniture_controller.dart';
import 'package:zb_dezign/features/rent/controller/rent_period_controller.dart';
import 'package:zb_dezign/features/rent/controller/rent_property_details_controller.dart';
import 'package:zb_dezign/features/rent/controller/rent_property_type_controller.dart';
import 'package:zb_dezign/features/rent/controller/rent_review_controller.dart';

class RentBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RentBusinessIdentificationController());
    Get.lazyPut(() => RentPropertyTypeController());
    Get.lazyPut(() => RentPropertyDetailsController());
    Get.lazyPut(() => RentFloorPlanController());
    Get.lazyPut(() => RentFurnitureController());
    Get.lazyPut(() => RentApplianceController());
    Get.lazyPut(() => RentBrandController());
    Get.lazyPut(() => RentPeriodController());
    Get.lazyPut(() => RentDeliveryController());
    Get.lazyPut(() => RentReviewController());
  }
}
