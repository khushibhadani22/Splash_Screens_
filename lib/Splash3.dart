import 'package:flutter/material.dart';

class Splash3 extends StatefulWidget {
  const Splash3({Key? key}) : super(key: key);

  @override
  State<Splash3> createState() => _Splash3State();
}

class _Splash3State extends State<Splash3> {
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
              'asset/image/WhatsApp Image 2023-02-02 at 10.58.05 PM (1).jpeg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
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
