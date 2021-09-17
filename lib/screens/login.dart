import 'package:florist_shop/widgets/customtextinputfiel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: null,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Text(
            'Florist Shop',
            style: GoogleFonts.dancingScript(
                textStyle: TextStyle(fontSize: 50, color: Colors.green)),
          ),
         Form(
           key:formKey,
           child:Column(
    children:[
          CustomTextInputField(
            controller: emailController,
            hint: 'Email',
            err: 'Email Field Required',
            inputAction: TextInputAction.next,
          ),

          CustomTextInputField(
            controller: passwordController,
            hint: 'Password',
            err: 'Password Field Required',
            inputAction: TextInputAction.done,
          ),],),),
          SizedBox(height: 20,),
          ElevatedButton(
              onPressed: () => onLogin(context),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.mukta(
                      textStyle: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ))
        ]),
      ),
    );
  }

  void onLogin(BuildContext context) {
    if (formKey.currentState!.validate()) {
      Navigator.pushReplacementNamed(context, '/dashboard');
    }
    else
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor:Colors.red,content: Text('Kindly fill all fields')));
  }
}

