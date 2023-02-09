import 'package:flutter/material.dart';

import 'main.dart';

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
                    'https://cdni.iconscout.com/illustration/premium/thumb/ideas-creativity-knowledge-and-inspiration-5066127-4257066.png',
                    height: 250,
                    width: 250,
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    "INSPIRATIONAL",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "    A comfortable working \nenvironment can be a great \n               inspiration",
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
                const Icon(
                  Icons.circle,
                  size: 15,
                  color: Colors.teal,
                ),
                const SizedBox(width: 8),
                Icon(
                  Icons.circle,
                  size: 15,
                  color: (Global.i == 1) ? Colors.teal : Colors.teal.shade900,
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
                  Navigator.of(context).pushNamed('third');
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
