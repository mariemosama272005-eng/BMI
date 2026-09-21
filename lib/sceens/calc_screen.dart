import 'package:bmi/models/gendercon_model.dart';
import 'package:bmi/models/value_model.dart';
import 'package:bmi/sceens/result.dart';
import 'package:bmi/sceens/wedgits/gendercon_wedgit.dart';
import 'package:bmi/sceens/wedgits/value_wedgit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalcScreen extends StatefulWidget {
  const CalcScreen({super.key});

  @override
  State<CalcScreen> createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  bool isMale = true;
  int weight = 60;
  double heightValue = 150.0;
  int age = 26;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C2135),

      appBar: AppBar(
        backgroundColor: const Color(0xff24263B),
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            20.verticalSpace,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GenderWidget(
                  gender: GenderconModel(
                    genderIcon: Icons.male,
                    color: 0xff24263B,
                    title: "Male",
                  ),
                  isSelected: isMale,
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                ),

                GenderWidget(
                  gender: GenderconModel(
                    genderIcon: Icons.female,
                    color: 0xff333244,
                    title: "Female",
                  ),
                  isSelected: !isMale,
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                ),
              ],
            ),

            20.verticalSpace,

           
            Container(
              height: 189.h,
              width: 319.w,
              decoration: BoxDecoration(
                color: const Color(0xff333244),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Height",
                    style: TextStyle(
                      color: Color(0xff8B8C9E),
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        heightValue.round().toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      const SizedBox(width: 5),

                      const Text(
                        "cm",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  Slider(
                    value: heightValue,
                    min: 100,
                    max: 250,
                    activeColor: Colors.red,
                    inactiveColor: Color(0xff8B8C9E),
                    thumbColor: Colors.white,
                    onChanged: (newValue) {
                      setState(() {
                        heightValue = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),

            20.verticalSpace,

            
            Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    ValueWidget(
      valueModel: ValueModel(
        title: "Weight",
        color: 0xff24263B, value: weight,
      ),
      value: weight,
      onMinus: () {
        setState(() {
          if (weight > 1) {
            weight--;
          }
        });
      },
      onPlus: () {
        setState(() {
          weight++;
        });
      },
    ),

    ValueWidget(
      valueModel: ValueModel(
        title: "Age",
        color: 0xff333244, value: age,
      ),
      value: age,
      onMinus: () {
        setState(() {
          if (age > 1) {
            age--;
          }
        });
      },
      onPlus: () {
        setState(() {
          age++;
        });
      },
    ),
  ],
),
                
                
            30.verticalSpace,

          
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Result(),
                  ),
                );
              },
              child: Container(
                height: 140.h,
                width: 360.w,
                decoration: const BoxDecoration(
                  color: Color(0xffEC3B68),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            20.verticalSpace,
          ],
        ),
      ),
    );
  }
}