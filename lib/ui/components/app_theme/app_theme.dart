import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app/configs/images.dart';

class AppTheme extends StatelessWidget {
  const AppTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SvgPicture.asset(AppImages.imgEllipse1),
      SvgPicture.asset(AppImages.imgEllipse2),
    ]);
  }
}
