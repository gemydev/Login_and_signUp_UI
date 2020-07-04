import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              "assets/images/first.jpg",
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
                  padding: const EdgeInsets.only(top: 40, left: 10, bottom: 80),
                  child: InkWell(
                    child: Image.asset(
                      "assets/images/BackIcon.png",
                      height: 30,
                      width: 30,
                    ),
                    onTap: () => Navigator.of(context).pop(),
                  ),
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 35),
                        child: Text(
                          "Forget Password",
                          style: TextStyle(fontSize: 50, color: Colors.white),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "Enter your email address, we'll send you the",
                            style:
                                TextStyle(fontSize: 18, color: Colors.white70),
                          ),
                          Text(
                            "instructions on how to change your password",
                            style:
                                TextStyle(fontSize: 18, color: Colors.white70),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 40, bottom: 15),
                  child: Text("EMAIL ADDRESS",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 40, left: 30, right: 30),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(7.0),
                        hintText: "name.lastname@test.com"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: InkWell(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
                      decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "SEND",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    onTap: () {},
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
