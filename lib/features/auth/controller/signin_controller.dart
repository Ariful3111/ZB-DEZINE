import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class SigninController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
Future<void> userLogin({required GlobalKey<FormState> formKey}) async {
  
    if (formKey.currentState?.validate() ?? false) {
      
    }
  }

  void signup({required GlobalKey<FormState> formKey}) {
    email.clear();
    password.clear();
    formKey.currentState?.reset();
   // Get.toNamed(AppRoutes.signupView);
  }
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
