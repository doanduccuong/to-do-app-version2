import 'package:todo_app/models/task_list.dart';

class Constants {
  /* Routing Names */
  static const String introScreen = "/intro_screen";
  static const String signInScreen = '/sign_in_screen';
  static const String registerScreen = '/register_screen';
  static const String userScreen = '/user_screen';

  /* class model */
  static List<TaskList> contentTaskList = [
    TaskList(
      check: false,
      text: "Cook Rice and Chicken at 10 am",
    ),
    TaskList(
      check: false,
      text: "Learn Reactjs at 12 pm",
    ),
    TaskList(
      check: false,
      text: "Have Launch  at 1pm",
    ),
    TaskList(
      check: false,
      text: "Learn HTML and CSS at 3pm",
    ),
    TaskList(
      check: false,
      text: "Have Dinner at 8pm",
    ),
  ];
}
