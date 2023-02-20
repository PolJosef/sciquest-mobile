import 'package:flutter/material.dart';
import 'package:sciquest_mobile/main/utils/AppWidget.dart';
import 'package:sciquest_mobile/theme1/screen/T1Signup.dart';
import 'package:sciquest_mobile/theme1/screen/t1_walk/IntroScreen.dart';
import 'package:sciquest_mobile/theme1/screen/t1_walk/Walkthrough.dart';
import 'package:sciquest_mobile/theme1/utils/T1Images.dart';

import '../../../main.dart';

class T1WalkThrough extends StatelessWidget {
  static var tag = "/T1WalkThrough";

  final List<Walkthrough> list = [
    Walkthrough(
        title: "Register",
        content:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
        imageIcon: t1_walk1),
    Walkthrough(
        title: "Scan QR Codes",
        content:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
        imageIcon: t1_walk2),
    Walkthrough(
        title: "Answer Questions",
        content:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
        imageIcon: t1_walk3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: IntroScreen(
          list,
          MaterialPageRoute(builder: (context) => T1Signup()),
        ),
      ),
    );
  }
}
