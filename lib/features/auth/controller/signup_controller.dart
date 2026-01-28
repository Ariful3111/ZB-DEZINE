import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  RxBool isChecked = false.obs;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController abnController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  RxBool isLoading = false.obs;
  Future<void> register({required GlobalKey<FormState> formKey}) async {
    if (formKey.currentState?.validate() ?? false) {
       isLoading.value = true;
      await Future.delayed(const Duration(seconds: 3), () {
        isLoading.value = false;
      });
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    abnController.dispose();
    phoneController.dispose();
    super.dispose();
  }
}
