import 'package:flutter/material.dart';
import 'package:ui_app/ui/forget_password.dart';
import 'package:ui_app/ui/intro.dart';
import 'package:ui_app/ui/login.dart';
import 'package:ui_app/ui/sign_up.dart';

void main() {
  runApp(MaterialApp(
    routes: <String, WidgetBuilder>{
      "login": (BuildContext context) => new Login(),
      "sign_up": (BuildContext context) => new SignUp(),
      "forget_password": (BuildContext context) => ForgetPassword(),
    },
    home: Home(),
  ));
}
