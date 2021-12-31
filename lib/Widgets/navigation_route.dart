import 'package:flutter/material.dart';

void changeScreenReplacement(BuildContext context, Widget widget )  {
  Navigator.of(context).popUntil((route) => route.isFirst);
  Route route = MaterialPageRoute(builder: (c) => widget);
  Navigator.pushReplacement(context, route);
}

void changeScreen(BuildContext context, Widget widget) {
  Route route = MaterialPageRoute(builder: (c) => widget);
  Navigator.push(context, route);
}

