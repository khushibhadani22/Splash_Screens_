import 'package:flutter/material.dart';

import 'main.dart';

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
        body: Column(
          children: [
            Container(
              height: 550.0,
              width: double.infinity,
              color: Colors.teal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.network(
                    'https://www.smartvault.com/wp-content/uploads/2018/12/smartvault-hero-7-ways-client-portal-saves-you-time-1-e1612990471814.png',
                    height: 250,
                    width: 250,
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    "SAVE THE TIME",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "We must complete the task \n       as soon as possible",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade200,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 70),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.circle,
                  size: 15,
                  color: (Global.i == 0) ? Colors.teal.shade900 : Colors.teal,
                ),
                const SizedBox(width: 8),
                const Icon(
                  Icons.circle,
                  size: 15,
                  color: Colors.teal,
                ),
                const SizedBox(width: 8),
                const Icon(
                  Icons.circle,
                  size: 15,
                  color: Colors.teal,
                ),
              ],
            ),
            const SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed('second');
                });
              },
              child: Container(
                height: 50,
                width: 130,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.teal, width: 2),
                  borderRadius: BorderRadius.circular(25),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Skip",
                  style: TextStyle(fontSize: 18, color: Colors.teal),
                ),
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
