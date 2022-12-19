import 'package:flutter/material.dart';
import 'package:habits/constant.dart';

class CustomAppBar extends AppBar{
  String? titleText;
  IconData? icon;
  CustomAppBar({required this.icon,required this.titleText,super.key})
      :super(title:Text(titleText??''),actions: [Icon(icon)],backgroundColor: primaryColor,elevation: 0);
}