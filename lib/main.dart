import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Splash Page.dart';
import 'Splash2.dart';
import 'Splash3.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();

  bool? first = prefs.getBool('done') ?? false;
  bool? second = prefs.getBool('done') ?? false;
  runApp(
    MaterialApp(
      initialRoute: (second == false)
          ? '/'
          : (first == false)
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

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late PageController pageController = PageController();
  late TabController tabController;

  List<Widget> loadPage = [const Splash(), const Splash2(), const Splash3()];

  splashPage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setBool('first', true);
  }

  @override
  void initState() {
    super.initState();
    splashPage();
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
          children: loadPage),
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
          leading: Container(),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('first');
                },
                icon: const Icon(
                  Icons.settings,
                  color: Colors.white,
                ))
          ],
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

class Global {
  static int i = 0;
}
