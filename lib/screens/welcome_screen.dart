import 'package:flutter/material.dart';
import 'package:learning_app_ui/screens/login_screen.dart';

import '../components/custom_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                'https://assets.materialup.com/uploads/897dce47-abf1-4013-b1cf-32352470830d/preview.jpg'),
            const Text(
              "Online learning Platform",
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Text(String data, {Key? key, TextStyle? style, StrutStyle? strutStyle, TextAlign? textAlign, TextDirection? textDirection, Locale? locale, bool? softWrap,",
              style: TextStyle(
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w300,
                  fontSize: 12),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              size: size,
              text: "Start Learning",
              ontap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ));
              },
            )
          ],
        ),
      )),
    );
  }
}
