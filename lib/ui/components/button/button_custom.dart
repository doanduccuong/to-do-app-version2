import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/configs/colors.dart';
import 'package:todo_app/ui/components/text/text_normal.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({required this.onTap, required this.insideText, Key? key})
      : super(key: key);
  final VoidCallback onTap;
  final String insideText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: TextNormal(
          title: insideText,
          size: 18.sp,
          colors: AppColors.wPrimaryColor,
        ),
        height: 62.0.h,
        width: 352.w,
        color: AppColors.aThirdColor,
      ),
    );
  }
}
