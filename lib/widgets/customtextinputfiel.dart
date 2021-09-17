import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextInputField extends StatelessWidget {
  final controller;
  final hint;
  final err;
  final inputAction;

  const CustomTextInputField({
    this.controller,
    this.hint,
    this.err,
    this.inputAction,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        obscureText: hint == 'Password',
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: GoogleFonts.mukta(
              textStyle: TextStyle(fontSize: 16, color: Colors.black)),
        ),
        validator: (value) => validate(value!),
        maxLines: 1,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.emailAddress,
        textInputAction: inputAction);
  }

  String? validate(String val) {
    switch (hint) {
      case 'Email':
        {
          if(val.isEmpty) return err;
          else if(!isValidEmail(val)) return 'Inavlid Email';
        }
        break;
      case 'Password':
        {
          if(val.isEmpty) return err;
          else if(val.length!=8) return 'Password must me 8 characters long';
        }
        break;
      default:
        return null;
    }
  }

  bool isValidEmail(String email) {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }
  }
