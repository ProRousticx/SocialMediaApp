import 'package:flutter/material.dart';
import 'package:myprofile/constants/MyWidgets.dart';
import 'package:myprofile/constants/my_styles.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, "/login");
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("My Profile", style: MyStyles.design.titleText()),
            const SizedBox(height: 30),
            MyWidgets.instance.customCircularProgressIndicator,
          ],
        ),
      ),
    );
  }
}
