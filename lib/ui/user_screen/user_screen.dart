import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app/configs/colors.dart';
import 'package:todo_app/configs/constants.dart';
import 'package:todo_app/configs/images.dart';
import 'package:todo_app/ui/components/app_theme/app_theme.dart';
import 'package:todo_app/ui/components/text/text_bold.dart';
import 'package:todo_app/ui/components/text/text_normal.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/utils/dialog_helper.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.cThirdColor,
      body: Column(
        children: [
          Container(
            width: 375.w,
            height: 307.h,
            color: AppColors.aThirdColor,
            child: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 133.h,
                        left: 141.h,
                        right: 134.h,
                      ),
                      child: Image.asset(AppImages.imgAvatar),
                    ),
                    SizedBox(height: 18.h),
                    Padding(
                      padding: EdgeInsets.only(left: 79.w, right: 73.w),
                      child: TextBold(
                        title: 'Hello Doan Duc Cuong',
                        colors: AppColors.wPrimaryColor,
                        size: 18.sp,
                        height: 1.16.h,
                      ),
                    ),
                  ],
                ),
                const AppTheme()
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 25.h,
                  left: 244.w,
                  right: 25.w,
                ),
                child: TextBold(
                  title: 'Good Afternoon',
                  colors: AppColors.bThirdColor,
                  size: 12.0.sp,
                  height: 1.15.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 128.w, left: 127.w),
                child: Image.asset(AppImages.imgClock),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 26.h,
                  left: 27.h,
                  right: 251.h,
                  bottom: 20.h,
                ),
                child: TextBold(
                  title: 'Task List',
                  colors: AppColors.bThirdColor,
                  size: 18.sp,
                  height: 1.15.h,
                ),
              ),
              Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(24.r),
                child: Container(
                  padding: EdgeInsets.only(
                    top: 24.h,
                    left: 21.w,
                    right: 26.w,
                  ),
                  width: 323.h,
                  height: 248.h,
                  decoration: BoxDecoration(
                    color: AppColors.wPrimaryColor,
                    borderRadius: BorderRadius.circular(24.r),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          TextNormal(
                            title: 'Task List',
                            size: 14.sp,
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () async {
                              var a = await DialogHelper.showTaskListDialog(
                                  context: context);
                              if (a != null) {
                                setState(
                                  () {
                                    Constants.contentTaskList.add(a);
                                  },
                                );
                              }
                            },
                            child: SvgPicture.asset(
                              AppImages.imgPluscircle,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25.h),
                      Expanded(
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          itemCount: Constants.contentTaskList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(bottom: 18.h),
                              height: 17.h,
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(
                                        () {
                                          Constants.contentTaskList[index]
                                                  .check =
                                              !Constants
                                                  .contentTaskList[index].check;
                                        },
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Constants
                                                .contentTaskList[index].check
                                            ? AppColors.aThirdColor
                                            : AppColors.wPrimaryColor,
                                        border: Border.all(
                                          color: AppColors.bPrimaryColor,
                                        ),
                                      ),
                                      width: 17.w,
                                      height: 17.h,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 11.w,
                                  ),
                                  TextNormal(
                                    title:
                                        Constants.contentTaskList[index].text,
                                    size: 12.sp,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
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
