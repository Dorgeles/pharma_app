import 'package:flutter/material.dart';

import 'theme-color.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool isPassword;
  final String label;
  final String hintText;
  final TextInputType inputType;

  const CustomTextField(
      {Key key,
      this.controller,
      this.isPassword,
      this.label,
      this.hintText,
      this.inputType})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          fillColor: Colors.grey.shade100,
          filled: true,
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: dark)),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 13)),
    );
  }
}
