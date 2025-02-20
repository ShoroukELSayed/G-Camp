import 'package:flutter/material.dart';

class SettingsOptionModel {
   String option;
   IconData icon;
   VoidCallback? onTap;

  SettingsOptionModel({ required this.option,required this.icon, this.onTap});
}