import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          alignment: const Alignment(0.9, 0.910),
          children: [
            Image.asset(
              'asset/image/WhatsApp Image 2023-02-02 at 10.58.04 PM.jpeg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('splashPage2');
                },
                child: const Text(
                  "Next",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ))
          ],
        ),
      )),
    );
  }
}
