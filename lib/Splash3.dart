import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';

class Splash3 extends StatefulWidget {
  const Splash3({Key? key}) : super(key: key);

  @override
  State<Splash3> createState() => _Splash3State();
}

class _Splash3State extends State<Splash3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  'https://www.pvamu.edu/me/wp-content/uploads/sites/100/teamwork.png',
                  height: 250,
                  width: 250,
                ),
                const SizedBox(height: 50),
                const Text(
                  "TEAMWORK",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                Text(
                  "Teamwork helps improve\n         your work skills",
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
              const Icon(
                Icons.circle,
                size: 15,
                color: Colors.teal,
              ),
              const SizedBox(width: 8),
              Icon(
                Icons.circle,
                size: 15,
                color: (Global.i == 2) ? Colors.teal : Colors.teal.shade900,
              ),
            ],
          ),
          const SizedBox(height: 50),
          GestureDetector(
            onTap: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.setBool('done', true);
              Navigator.of(context).pushReplacementNamed('home');
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
                "Next",
                style: TextStyle(fontSize: 18, color: Colors.teal),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
