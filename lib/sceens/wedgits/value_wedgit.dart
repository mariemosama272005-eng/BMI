import 'package:bmi/models/value_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ValueWidget extends StatelessWidget {
  final ValueModel valueModel;
  final int value;
  final VoidCallback onMinus;
  final VoidCallback onPlus;

  const ValueWidget({
    required this.valueModel,
    required this.value,
    required this.onMinus,
    required this.onPlus,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      width: 155.w,
      decoration: BoxDecoration(
        color: Color(valueModel.color),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            valueModel.title,
            style: const TextStyle(
              color: Color(0xff8B8C9E),
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),

          10.verticalSpace,

          Text(
            value.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w700,
            ),
          ),

          15.verticalSpace,

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: onMinus,
                child: Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: const Color(0xff8B8C9E),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ),

              20.horizontalSpace,

              GestureDetector(
                onTap: onPlus,
                child: Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: const Color(0xff8B8C9E),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}