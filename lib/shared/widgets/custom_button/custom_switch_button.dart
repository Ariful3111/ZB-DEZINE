import 'package:flutter/material.dart';
import 'package:zb_dezign/core/constant/colors.dart';

class CustomSwitchButton extends StatelessWidget {
  final bool isOn;
  final ValueChanged<bool> onChanged;
  final Color ?activeThumbColor; 
  final Color ?inactiveThumbColor; 
  final Color? activeTrackColor; 
  final Color? inactiveTrackColor; 
  const CustomSwitchButton({super.key, required this.isOn, required this.onChanged, this.activeThumbColor, this.inactiveThumbColor, this.activeTrackColor, this.inactiveTrackColor});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isOn,
      onChanged: onChanged,
      activeThumbColor:activeThumbColor?? AppColors.whiteColor,
      inactiveThumbColor:inactiveThumbColor?? AppColors.whiteColor,
      activeTrackColor:activeTrackColor?? Color(0xFF32D74B),
      inactiveTrackColor:inactiveTrackColor?? Colors.grey,
    );
  }
}