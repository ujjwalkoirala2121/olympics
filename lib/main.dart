import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fun_olympic/Widgets/navigation_route.dart';
import 'Authentication/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp (home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
          title: 'fun-olympic',
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
    );
  }
}


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    displaySplash();
  }

  displaySplash() {
    Timer(const Duration(seconds: 4), ()  {
      changeScreenReplacement(context, Login());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/olympics.png"),
             SizedBox(
              height: 20.0,
            ),
             Text(
              "Best Broadcasting apps for Olympics",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}