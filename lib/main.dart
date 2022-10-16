import 'package:flutter/material.dart';
import 'package:stepper_app/screen/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: const SplashScreen(),
    ),
  );
}
