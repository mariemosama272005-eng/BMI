import 'package:bmi/sceens/calc_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:Size(360, 800) ,
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp( home: CalcScreen()));
  }
}