import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RentPeriodController extends GetxController {
  RxInt selectedPayment = 0.obs;
  TextEditingController otherController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController requirementController = TextEditingController();
  RxInt selectedType = 0.obs;
  RxInt selectedOption = 0.obs;
  
  List payment = ['Pay in full', 'Pay in instalment'];
  List type = ['Urgent', 'Standard', 'Flexible'];
  List option = ['Yes', 'No',];
  List installment = [
    {
      'title': 'Upfront Payment (40%)',
      'subTitle': 'A portion of the total amount is charged at checkout.',
    },
    {
      'title': '2nd Payment (Month 2 - 30%)',
      'subTitle': 'Automatically charged in the following billing period.',
    },
    {
      'title': 'Final Payment (Month 3 - 30%)',
      'subTitle': 'Charged in the last billing period of the plan.',
    },
  ];
}
