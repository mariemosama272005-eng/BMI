import 'package:bmi/sceens/calc_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Result extends StatelessWidget {
  const Result({super.key});

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
            Text(
              "Your Result",style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
        
              ),
            ),
            25.verticalSpace,
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                height: 503.h,
                width: 319.w,
                decoration: BoxDecoration(
                  color: Color(0xff333244),
                  
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
              
                  children: [
                    Text("normal",style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                    33.verticalSpace,
                    Text("19.2",style: 
                    TextStyle(
                      color: Colors.white,
                      fontSize: 64,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    60.verticalSpace,
                    Text("You Have a Normal Body Weight,\nGood Job.",style: TextStyle(
                      fontSize: 16gi,
                      color: Color(0xff8B8C9E)
                    ),)
              
                    
                  ],
                ),
              ),
            ),
            49.verticalSpace,
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CalcScreen(),
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
                      "ReCalculate",
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