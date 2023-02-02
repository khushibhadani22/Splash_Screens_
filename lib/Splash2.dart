import 'package:flutter/material.dart';

class Splash2 extends StatefulWidget {
  const Splash2({Key? key}) : super(key: key);

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
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
              'asset/image/WhatsApp Image 2023-02-02 at 10.58.05 PM.jpeg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('splashPage3');
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
