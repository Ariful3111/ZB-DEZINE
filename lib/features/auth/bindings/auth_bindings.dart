import 'package:get/get.dart';
import 'package:zb_dezign/features/auth/controller/onboarding_controller.dart';
import 'package:zb_dezign/features/auth/controller/signin_controller.dart';
import 'package:zb_dezign/features/auth/controller/signup_controller.dart';
import 'package:zb_dezign/features/auth/controller/signup_option_controller.dart';
import 'package:zb_dezign/features/auth/controller/user_mode_controller.dart';

class AuthBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingController());
    Get.lazyPut(() => SigninController());
    Get.lazyPut(() => UserModeController());
    Get.lazyPut(() => SignupController());
    Get.lazyPut(() => SignupOptionController());
  }
}
