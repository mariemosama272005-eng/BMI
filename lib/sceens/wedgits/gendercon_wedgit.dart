
import 'package:bmi/models/gendercon_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenderWidget extends StatelessWidget {
  final GenderconModel gender;
  final bool isSelected;
  final VoidCallback onTap;

  const GenderWidget({
    required this.gender,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 155.w,
        height: 180.h,
        decoration: BoxDecoration(
          color: Color(gender.color),
          borderRadius: BorderRadius.circular(12.r),
          border: isSelected
              ? Border.all(
                  color: Colors.red,
                  width: 2,
                )
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              gender.genderIcon,
              size: 120,
              color: Colors.white,
            ),
            Text(
              gender.title,
              style: const TextStyle(
                color: Color(0xff8B8C9E),
              ),
            ),
          ],
        ),
      ),
    );
  }
}