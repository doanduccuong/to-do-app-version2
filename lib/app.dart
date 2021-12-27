import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/configs/constants.dart';
import 'package:todo_app/ui/ui.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => MaterialApp(
        title: 'Todo App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const IntroScreen(),
        routes: {
          Constants.introScreen: (context) => const IntroScreen(),
          Constants.signInScreen: (context) => const SignInPage(),
          Constants.registerScreen: (context) => const RegisterPage(),
          Constants.userScreen: (context) => const UserScreen(),
        },
      ),
    );
  }
}
