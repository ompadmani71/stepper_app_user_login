import 'package:flutter/material.dart';
import 'package:stepper_app/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const HomeScreen()));
    },);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: SizedBox(
            width: MediaQuery.of(context).size.width  * 0.9,
            height: MediaQuery.of(context).size.height  * 0.9,
            child: FlutterLogo(style: FlutterLogoStyle.horizontal)),
      ),
    );
  }
}
