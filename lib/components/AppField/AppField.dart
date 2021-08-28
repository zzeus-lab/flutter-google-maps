import 'package:flutter/material.dart';

class AppField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  const AppField({
    this.controller,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        hintText: hint,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: BorderSide(width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: BorderSide(width: 1),
        ),
      ),
    );
  }
}
