import 'package:flutter/material.dart';
import 'package:myapp/onboardingScreen/onboarding1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _goHome();
    super.initState();
  }

  _goHome()async{
    await Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex)=> const Onboarding1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0f1621),
      body: Center(
        child: Image.asset(
          "assets/images/Logo.png",
          height: 130,
          alignment: Alignment.center
        ),
      )
    );
  }
}
