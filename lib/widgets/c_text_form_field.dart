import 'package:flutter/material.dart';

class CTextFormField extends StatelessWidget {
  final Widget prefixIcon;
  final Widget suffixIcon;
  final String hintText;
  final bool obscureText;
  final bool autofocus;
  final TextInputType keyboardType;

  CTextFormField({
    this.prefixIcon,
    this.hintText,
    this.obscureText = false,
    this.keyboardType,
    this.suffixIcon,
    this.autofocus = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey[200],
      ),
      child: TextFormField(
        cursorColor: Colors.black,
        obscureText: obscureText,
        autofocus: autofocus,
        keyboardType: keyboardType,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.only(left: 8),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 12.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: Colors.grey[100],
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: Colors.grey[200],
            ),
          ),
        ),
      ),
    );
  }
}
