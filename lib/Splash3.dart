import 'package:flutter/material.dart';

class Splash3 extends StatefulWidget {
  const Splash3({Key? key}) : super(key: key);

  @override
  State<Splash3> createState() => _Splash3State();
}

class _Splash3State extends State<Splash3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('splashPage4');
                },
                child: Text(
                  "Skip",
                  style: TextStyle(color: Colors.amberAccent, fontSize: 20),
                )),
            CircularProgressIndicator(),
            Text(
              "Made By Flutter....",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
