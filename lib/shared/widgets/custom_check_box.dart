import 'package:flutter/material.dart';
import 'package:zb_dezign/core/constant/colors.dart';

class CustomCheckBox extends StatelessWidget {
  final bool isChecked;
  final ValueChanged onChange;
  const CustomCheckBox({
    super.key,
    required this.isChecked,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      visualDensity: VisualDensity.compact,
      activeColor: AppColors.primaryColor,
      value: isChecked,
      onChanged: onChange,
    );
  }
}