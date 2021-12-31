import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fun_olympic/Authentication/login.dart';
import 'package:fun_olympic/Scoreboard/scoreboard.dart';

import 'navigation_route.dart';



class Home extends StatefulWidget {
  final name;
  const Home({Key? key, this.name}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    gameWatch();
  }

  gameWatch() {
    Timer(const Duration(seconds: 4), ()  {
      changeScreen(context, ScoreBoard());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Welcome " + widget.name,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Lets Watch",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w100),
                ),
              ),
            ],
          ),
        ),
        color: Colors.white,
      ),
    );
  }
}
