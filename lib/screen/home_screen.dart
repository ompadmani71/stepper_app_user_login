import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  int initialStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Stepper App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Stepper(
            currentStep: initialStep,
            onStepTapped: (value) {
              setState(() {
                initialStep = value;
              });
            },
            onStepContinue: () {
              setState(() {
                if (initialStep < 2) initialStep++;
              });
            },
            onStepCancel: () {
              setState(() {
                if (initialStep > 0) initialStep--;
              });
            },
            steps: [
              Step(
                isActive: (initialStep >= 0) ? true: false,
                title: const Text("Sing up"),
                content: Column(
                  children: [
                    textField(
                    icon: Icons.person_outline, hint: "Full Name"),
                    textField(
                      icon:
                      Icons.email_outlined,
                      hint: "Email id",
                    ),
                    textField(
                     icon:  Icons.lock_outline,
                      hint: "Password",
                    ),
                    textField(
                      icon: Icons.lock_outline,
                      hint: "Conform Password",
                    ),
                  ],
                ),
              ),
              Step(
                isActive: (initialStep >= 1) ? true: false,
                title: const Text("Login"),
                content: Column(
                  children: [
                    textField(
                      icon: Icons.person_outline, hint: "User Name",
                    ),
                    textField(
                     icon: Icons.lock_outline, hint: "Password",
                    ),
                  ],
                ),
              ),
              Step(
                isActive: (initialStep >= 2) ? true: false,
                title: const Text("Home"),
                content: Container(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  decoration(icon, String hint) {
    return InputDecoration(
      icon: Icon(icon),
      hintText: hint,
    );
  }

  TextField textField ({required IconData icon,required String hint}){

    return TextField(
      decoration: InputDecoration(
        icon: Icon(icon),
        hintText: hint
      ),
    );
  }

}
