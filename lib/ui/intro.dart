import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_app/ui/sign_up.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "GemyDevApp",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 35,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Flirt, chat and meet people around you",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 300),
                  ),
                  InkWell(
                    child: Image.asset(
                      "assets/images/Signup.png",
                      height: 80,
                      width: 310,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                  ),
                  InkWell(
                    child: Image.asset(
                      "assets/images/Login.png",
                      height: 80,
                      width: 310,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "login");
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
