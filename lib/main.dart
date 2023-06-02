import 'package:app_movie/page/CategoryPage.dart';
import 'package:app_movie/page/LoginPage.dart';
import 'package:app_movie/page/MoviePage.dart';
import 'package:app_movie/page/HomePage.dart';
import 'package:app_movie/page/ProfilePage.dart';
import 'package:app_movie/page/SplashPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    //To hide status bar and below buttons
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext content) {
    return MaterialApp(
      // title: 'beru',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF000000),
      ),
      routes: {
        "/": (context) => SplashPage(),
        "loginPage": (context) => LoginPage(),
        "homePage": (context) => HomePage(),
        "categoryPage": (context) => CategoryPage(),
        "moviePage": (context) => MoviePage(),
        "profilePage": (context) => ProfilePage(),
      },
    );
  }
}
