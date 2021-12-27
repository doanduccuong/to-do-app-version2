import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/ui/components/bottom_sheet/bottom_sheet_task_list.dart';

class DialogHelper {
  static Future<dynamic> showTaskListDialog({
    required BuildContext context,
  }) async {
    return await showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.r),
          topLeft: Radius.circular(24.r),
        ),
      ),
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return const AddTaskScreen();
      },
    );
  }
}
