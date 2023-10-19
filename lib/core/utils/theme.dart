import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData lightTheme=ThemeData.light().copyWith(
  appBarTheme:  AppBarTheme(
    iconTheme: const IconThemeData(color: Colors.black),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    toolbarHeight: 0.h,
  ),
  iconTheme: IconThemeData(size: 20.w),
  scaffoldBackgroundColor: Colors.white,
);
