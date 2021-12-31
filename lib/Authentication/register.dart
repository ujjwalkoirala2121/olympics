import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fun_olympic/Widgets/custom_text.dart';
import 'package:fun_olympic/Widgets/navigation_route.dart';

import '../Widgets/home.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _nameTextEditingController =
      TextEditingController();
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();
  final TextEditingController _cPasswordTextEditingController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width,
        _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomText(
                      controller: _nameTextEditingController,
                      iconData: Icons.person,
                      hintText: "Name",
                      obscure: false,
                    ),
                    CustomText(
                      controller: _emailTextEditingController,
                      iconData: Icons.email,
                      hintText: "Email",
                      obscure: false,
                    ),
                    CustomText(
                      controller: _passwordTextEditingController,
                      iconData: Icons.person,
                      hintText: "Password",
                      obscure: true,
                    ),
                    CustomText(
                      controller: _cPasswordTextEditingController,
                      iconData: Icons.person,
                      hintText: "Confirm Password",
                      obscure: true,
                    ),
                  ],
                ),
              ),
              RaisedButton(
                  onPressed: () {
                    changeScreen(
                        context,
                        Home(
                          name: _nameTextEditingController.text,
                        ));
                  },
                  color: Colors.pink,
                  child: Text(
                    "Sign UP",
                    style: TextStyle(color: Colors.white),
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 4.0,
                width: _screenWidth * 0.8,
                color: Colors.pink,
              ),
              SizedBox(
                height: 15.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
