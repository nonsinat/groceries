import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_fruit_flutter_version2/constant/theme_constant.dart';
import 'package:online_fruit_flutter_version2/screen/signin_screen/sign_in.dart';
import 'package:online_fruit_flutter_version2/widgets/f_button.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          "asset/getstartimg/startimg.png",
          fit: BoxFit.cover,
        ),
        Positioned.fill(
            child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              Spacer(),
              Image.asset("asset/logo/logo.png"),
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 35,
                    color: background,
                    fontFamily: "RobotoBlack",
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              Text(
                "to our store",
                style: TextStyle(
                    fontSize: 35,
                    color: background,
                    fontFamily: "RobotoBlack",
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
                textWidthBasis: TextWidthBasis.parent,
              ),
              SizedBox(
                height: defaultPadding1,
              ),
              Text(
                "Get your groceries in as fast as one hour",
                style: TextStyle(
                  color: Color(0xFFFCFCFC).withOpacity(0.7),
                  fontFamily: "RobotoRegular",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              FButton(
                onTap: () {
                  print("Get Started");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                },
                text: "Get Started",
              ),
            ],
          ),
        ))
      ],
    ));
  }
}
