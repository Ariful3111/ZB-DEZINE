import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zb_dezign/core/constant/images_path.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  var currentIndex = 0.obs;
  List onboardingItems = [
    {
      'image': ImagesPath.onboarding1,
      'title': 'Design, Buy & Rent Furniture Effortlessly',
      'subTitle':
          'Shop premium furniture, rent collections, and visualize everything in your own space with AI & AR.',
    },
    {
      'image': ImagesPath.onboarding2,
      'title': 'See It In Your Space Before You Buy',
      'subTitle':
          'Upload or capture your room and place furniture, lighting & décor using AI and 3D.',
    },
    {
      'image': ImagesPath.onboarding3,
      'title': 'Buy New. Sell Old. Rent Smart.',
      'subTitle':
          'Sell your old furniture, rent collections,\nor request business setups in minutes.',
    },
    {
      'image': ImagesPath.onboarding4,
      'title': 'Memberships & Business Rentals',
      'subTitle':
          'Unlock discounts, free collections, and\nbusiness rental solutions with flexible plans.',
    },
    {
      'image': ImagesPath.onboarding4,
      'title': 'Sign Up or Log In, No Password Required',
      'subTitle':
          'Unlock discounts, free collections, and\nbusiness rental solutions with flexible plans.',
    },
  ];
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
