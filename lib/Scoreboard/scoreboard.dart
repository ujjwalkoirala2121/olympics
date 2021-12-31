import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fun_olympic/Scoreboard/video_live.dart';
import 'package:fun_olympic/Widgets/navigation_route.dart';

class ScoreBoard extends StatefulWidget {
  const ScoreBoard({Key? key}) : super(key: key);

  @override
  _ScoreBoardState createState() => _ScoreBoardState();
}

class _ScoreBoardState extends State<ScoreBoard> {
  String randomNumber1 = "X";
  String randomNumber2 = "y";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(randomNumber1 + "/" + randomNumber2, style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    randomNumber1 = Random().nextInt(1000).toString();
                    randomNumber2 = Random().nextInt(500).toString();
                  });
                },
                child: Text("Update"),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: RaisedButton(
                  onPressed: () {
                    changeScreen(context, VideoLive());
                  },
                  color: Colors.pink,
                  child: Text(
                    "Play Live",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
