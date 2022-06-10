// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String hint, field;
  String? helper;
  InputText({required this.hint, required this.field, this.helper});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            iconColor: Colors.black,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            labelText: field,
            hintText: hint),
      ),
    );
  }
}
