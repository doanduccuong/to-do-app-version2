import 'package:flutter/material.dart';
import 'package:todo_app/configs/colors.dart';
import 'package:todo_app/configs/constants.dart';
import 'package:todo_app/ui/components/text/text_bold.dart';
import 'package:todo_app/ui/components/text/text_normal.dart';
import 'package:todo_app/ui/components/text_input/text_input.dart';
import '../components/app_theme/app_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../components/button/button_custom.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: AppTheme(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 76.h, bottom: 14.h),
            child: TextBold(
              title: "Welcome Onboard!",
              colors: AppColors.primaryColor,
              size: 18.sp,
              height: 1.3.h,
            ),
          ),
          TextNormal(
            title: 'Let’s help you meet up your tasks',
            size: 13.sp,
          ),
          Container(
            padding: EdgeInsets.only(
              top: 49.h,
              bottom: 21.h,
            ),
            margin: EdgeInsets.only(
              left: 27.w,
              right: 23.w,
            ),
            child: const TextInput(
              hintText: "Enter your full name",
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              bottom: 21.h,
            ),
            margin: EdgeInsets.only(
              left: 27.w,
              right: 23.w,
            ),
            child: const TextInput(
              hintText: "Enter your email",
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              bottom: 21.h,
            ),
            margin: EdgeInsets.only(
              left: 27.w,
              right: 23.w,
            ),
            child: const TextInput(
              hintText: "Enter password",
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 27.w,
              right: 23.w,
            ),
            child: const TextInput(
              hintText: "Confirm Password",
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 23.h, left: 26.w, right: 24.w),
            child: ButtonCustom(
              onTap: () {
                Navigator.pushNamed(context, Constants.signInScreen);
              },
              insideText: "REGISTER",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 25.h),
            child: RichText(
              text: TextSpan(
                text: "Already have an account ? ",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w700,
                ),
                children: [
                  TextSpan(
                    text: "Sign In",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14.sp,
                      color: AppColors.aThirdColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
