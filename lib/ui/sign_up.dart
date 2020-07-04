import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
            // first step : import 'dart:ui' as ui;
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
                  padding: const EdgeInsets.only(left: 20, bottom: 12.0),
                  child: Text(
                    "Signup",
                    style: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                        fontFamily: 'Embed Font'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30),
                  child: Text("CHOOSE A USERNAME",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 15, left: 30, right: 30),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(7.0),
                        hintText: "LondonGirl87"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30),
                  child: Text("YOUR AGE",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 15, left: 30, right: 30),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(7.0), hintText: "29"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30),
                  child: Text("EMAIL ADDRESS",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 15, left: 30, right: 30),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(7.0),
                        hintText: "name.lastname@test.com"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30),
                  child: Text("PASSWORD",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 15, left: 30, right: 30),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(7.0),
                        hintText: "**********"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
                          decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "SIGNUP",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        onTap: () {},
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "login");
                            },
                            child: Text(
                              "Already a member?",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
