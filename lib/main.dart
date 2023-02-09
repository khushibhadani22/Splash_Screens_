import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Splash Page.dart';
import 'Splash2.dart';
import 'Splash3.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();

  bool? ok = prefs.getBool('done') ?? false;
  bool? main = prefs.getBool('done') ?? false;
  runApp(
    MaterialApp(
      initialRoute: (main == false)
          ? '/'
          : (ok == false)
              ? 'third'
              : 'home',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const MyApp(),
        'first': (context) => const Splash(),
        'second': (context) => const Splash2(),
        'third': (context) => const Splash3(),
        'home': (context) => const HomePage(),
      },
    ),
  );
}

class Global {
  static int i = 0;
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late PageController pageController = PageController();
  late TabController tabController;

  List<Widget> getPages = [const Splash(), const Splash2(), const Splash3()];

  splash() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setBool('first', true);
  }

  @override
  void initState() {
    super.initState();
    splash();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          physics: const BouncingScrollPhysics(),
          onPageChanged: (val) {
            setState(() {
              tabController.animateTo(val);
            });
          },
          controller: pageController,
          children: getPages),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Welcome To The Home Page.....",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.teal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
