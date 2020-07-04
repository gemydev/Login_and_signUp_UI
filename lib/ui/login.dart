import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:ui_app/ui/forget_password.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var GoogleFonts;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              "assets/images/first.jpg",
              height: 2400,
              fit: BoxFit.fill,
            ),
            BackdropFilter(
              filter: ui.ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.black.withOpacity(0),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 10, bottom: 50),
                  child: InkWell(
                    child: Image.asset(
                      "assets/images/BackIcon.png",
                      height: 30,
                      width: 30,
                    ),
                    onTap: () => Navigator.of(context).pop(),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 12),
                    child: Text(
                      "Login",
                      style: GoogleFonts.lato(
                          textStyle:
                              TextStyle(fontSize: 50, color: Colors.white),
                          fontStyle: FontStyle.normal),
                    )),
                Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Text(
                      "EMAIL ADDRESS",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 20, left: 30.0, right: 30),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(7.0),
                        hintText: "name.lastname@test.com"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, bottom: 12),
                  child: Text(
                    "PASSWORD",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 85, left: 30, right: 30),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "**********",
                        contentPadding: EdgeInsets.all(7.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ForgetPassword()));
                        },
                      )
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 220)),
                Expanded(
                  child: Center(
                    child: Container(
                        decoration: BoxDecoration(color: Colors.black12),
                        child: InkWell(
                          child: Center(
                            child: Text(
                              "Don't have an account? Sign up",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "sign_up");
                          },
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
