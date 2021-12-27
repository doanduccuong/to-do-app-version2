import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app/configs/colors.dart';
import 'package:todo_app/configs/constants.dart';
import 'package:todo_app/configs/images.dart';
import 'package:todo_app/ui/components/text/text_bold.dart';
import 'package:todo_app/ui/components/text/text_normal.dart';
import '../components/app_theme/app_theme.dart';
import '../components/button/button_custom.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppTheme(),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 45.h),
            padding: EdgeInsets.only(
              top: 59.h,
            ),
            child: SvgPicture.asset(
              AppImages.imgIntro,
            ),
          ),
          Center(
            child: TextBold(
              title: 'Get thing done with TODO',
              size: 18.sp,
              colors: AppColors.primaryColor,
              height: 1.3.h,
              isCenter: true,
            ),
          ),
          SizedBox(height: 36.h),
          Center(
            child: TextNormal(
              title:
                  'Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. Interdum\n dictum tempus, interdum at dignissim\n metus. Ultricies sed nunc',
              size: 13.sp,
              colors: AppColors.primaryColor,
              isCenter: true,
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 94.h, left: 26.w, right: 24.w),
            child: ButtonCustom(
              onTap: () {
                Navigator.pushNamed(context, Constants.registerScreen);
              },
              insideText: "GET STARTED",
            ),
          ),
        ],
      ),
    );
  }
}
