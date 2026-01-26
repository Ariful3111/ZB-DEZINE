import 'package:get/get.dart';
import 'package:zb_dezign/core/routes/app_routes.dart';
import 'package:zb_dezign/features/auth/bindings/auth_bindings.dart';
import 'package:zb_dezign/features/auth/views/onboarding_view.dart';

final List<GetPage> appRoutes = [
  GetPage(name: AppRoutes.onboardingView, page: ()=>OnboardingView(),binding: AuthBindings()),
];
