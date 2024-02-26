import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "LOG IN",
          style: TextStyle(color: Colors.purple, fontSize: 18,fontWeight: FontWeight.w500),
        ),
        leading: const Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.purple,
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          children: [
            Text(
              "Learning App",
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            Text("Enter Your Login Details to access your account",style: TextStyle(color: Colors.purple),)
          ],
        ),
      ),
    );
  }
}
