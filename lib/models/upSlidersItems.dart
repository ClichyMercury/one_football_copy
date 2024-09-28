import 'package:flutter/material.dart';

class UpSliderItem {
  final bool isMatch;
  final bool liveNow;
  final Widget? logo1IfTwice;
  final Widget? logo2IfTwice;
  final Widget oneLogoOnly;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  UpSliderItem({
    required this.liveNow,
    required this.isMatch,
    this.logo1IfTwice,
    this.logo2IfTwice,
    required this.oneLogoOnly,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });
}
