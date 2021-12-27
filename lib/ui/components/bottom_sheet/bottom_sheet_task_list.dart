import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/configs/colors.dart';
import 'package:todo_app/models/task_list.dart';
import 'package:todo_app/ui/components/button/button_custom.dart';
import 'package:todo_app/ui/components/text/text_bold.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450.h,
      decoration: BoxDecoration(
        color: AppColors.wPrimaryColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.r),
          topLeft: Radius.circular(24.r),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 15.h,
          ),
          TextBold(
            title: 'Add task',
            colors: AppColors.iconColor,
            size: 24.sp,
            height: 1.16.h,
          ),
          TextField(
            textAlign: TextAlign.center,
            autofocus: true,
            controller: controller,
          ),
          SizedBox(
            height: 30.h,
          ),
          ButtonCustom(
            insideText: 'ADD',
            onTap: () {
              TaskList taskList =
                  TaskList(check: false, text: controller.text.trimLeft());

              if (controller.text.trimLeft().isNotEmpty) {
                return Navigator.pop(context, taskList);
              }
            },
          ),
        ],
      ),
    );
  }
}
