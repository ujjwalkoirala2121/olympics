import 'package:flutter/material.dart';
import 'package:fun_olympic/Authentication/register.dart';
import 'package:fun_olympic/Widgets/custom_text.dart';
import 'package:fun_olympic/Widgets/navigation_route.dart';
import '../Widgets/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width,
        _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: RaisedButton(
              child: Text("Register", style: TextStyle(color: Colors.black),),
                onPressed: (){changeScreen(context, Register());}),
          )
        ],
        centerTitle: true,
        title: const Text("Olympics Requirement"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                "images/olymp.jpeg",
                height: 240.0,
                width: 240.0,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Login to watch Olympic",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomText(
                    iconData: Icons.mail,
                    obscure: false,
                    hintText: "email",
                    maxLength: 30,
                    controller: _emailTextEditingController,
                  ),
                  CustomText(
                    iconData: Icons.password,
                    obscure: true,
                    hintText: "password",
                    maxLength: 10,
                    controller: _passwordTextEditingController,
                  ),

                  RaisedButton(
                      onPressed: () {
                        changeScreen(context, Home(name: _emailTextEditingController.text.trim(),));
                      },
                      color: Colors.pink,
                      child: const Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white),
                      )),
                  Container(
                    height: 4.0,
                    width: _screenWidth * 0.8,
                    color: Colors.pink,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  // FlatButton.icon(
                  //   onPressed: () => Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => AdminSignInPage())),
                  //   icon: Icon(
                  //     Icons.nature_people,
                  //     color: Colors.pink,
                  //   ),
                  //   label: Text(
                  //     "i'm Admin",
                  //     style: TextStyle(
                  //         color: Colors.pink, fontWeight: FontWeight.bold),
                  //   ),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
