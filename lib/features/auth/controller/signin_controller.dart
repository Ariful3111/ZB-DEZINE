import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zb_dezign/core/routes/app_routes.dart';

class SigninController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  RxBool isLoading = false.obs;
  Future<void> userLogin({required GlobalKey<FormState> formKey}) async {
    if (formKey.currentState?.validate() ?? false) {
      isLoading.value = true;
      await Future.delayed(const Duration(seconds: 3), () {
        isLoading.value = false;
      });
    }
  }

  void signup({required GlobalKey<FormState> formKey}) {
    email.clear();
    password.clear();
    formKey.currentState?.reset();
    Get.toNamed(AppRoutes.userModeView);
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
