import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  final iconData;
  final hintText;
  final maxLength;
  final controller;
  final obscure;
  const CustomText(
      {Key? key,
      this.hintText,
      this.maxLength,
      this.controller,
      this.obscure,
      this.iconData})
      : super(key: key);

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // different box decoration from style bDecoration
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(10.0),
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(widget.iconData),
          hintText: widget.hintText,
        ),
        maxLength: widget.maxLength,
        controller: widget.controller,
        obscureText: widget.obscure,
      ),
    );
  }
}
