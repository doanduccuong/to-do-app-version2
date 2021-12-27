import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app/configs/colors.dart';
import 'package:todo_app/configs/constants.dart';
import 'package:todo_app/configs/images.dart';
import 'package:todo_app/ui/components/app_theme/app_theme.dart';
import 'package:todo_app/ui/components/button/button_custom.dart';
import 'package:todo_app/ui/components/text/text_bold.dart';
import 'package:todo_app/ui/components/text_input/text_input.dart';
import 'package:dotted_border/dotted_border.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: AppTheme(),
            ),
            SizedBox(height: 35.0.h),
            Padding(
              padding: EdgeInsets.only(bottom: 12.h),
              child: TextBold(
                title: 'Welcome Back!',
                colors: AppColors.bPrimaryColor,
                size: 18.sp,
                height: 1.16.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 33.h),
              child: DottedBorder(
                dashPattern: const [6, 4],
                color: AppColors.bThirdColor,
                child: SvgPicture.asset(AppImages.imgSlice2),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 12.0.h,
                right: 25.0.h,
                left: 25.0.h,
              ),
              child: const TextInput(hintText: 'Enter your email'),
            ),
             Padding(
              padding: EdgeInsets.only(
                bottom: 25.0.h,
                right: 25.0.w,
                left: 25.0.w,
              ),
              child: const TextInput(hintText: 'Enter password'),
            ),
            TextBold(
              title: 'Forgot Password',
              colors: AppColors.aThirdColor,
              size: 14.sp,
              height: 1.16.h,
              isCenter: true,
            ),
            const Spacer(),
            ButtonCustom(
              onTap: () {
                Navigator.pushNamed(context, Constants.userScreen);
              },
              insideText: 'Sign In',
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 49.h,
                top: 29.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextBold(
                    title: "Don't have an account ?",
                    colors: AppColors.primaryColor,
                    size: 14.sp,
                    height: 1.15.h,
                  ),
                  TextBold(
                    title: ' SignUp',
                    colors: AppColors.aThirdColor,
                    size: 14.sp,
                    height: 1.15.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
