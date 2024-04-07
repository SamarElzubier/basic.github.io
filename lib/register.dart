// import'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projrcts/component/buttom.dart';
import 'package:flutter_projrcts/component/logo.dart';
import 'package:flutter_projrcts/component/textformfield.dart';
//import 'package:fluttercourse/components/custombuttonauth.dart';
//import 'package:fluttercourse/components/customlogoauth.dart';
//import 'package:fluttercourse/components/textformfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 50),
               CustomLogoAuth(),
              Container(height: 20),
               Text("Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              Container(height: 10),
               Text("Login To Continue Using The App",
                  style: TextStyle(color: Colors.grey)),
              Container(height: 20),
               Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Container(height: 10),
              CustomTextForm(
                  hinttext: "ُEnter Your Email", mycontroller: email),
              Container(height: 10),
               Text(
                "Password",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Container(height: 10),
              CustomTextForm(
                  hinttext: "ُEnter Your Password", mycontroller: password),
              Container(
                margin:  EdgeInsets.only(top: 10, bottom: 20),
                alignment: Alignment.topRight,
                child:  Text(
                  "Forgot Password ?",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          CustomButtonAuth(title: "login", onPressed: ()async{
try {
  // ignore: unused_local_variable
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email.text,
    password: password.text);
 Navigator.of(context).pushReplacementNamed("homepage");
} on FirebaseAuthException catch (e) {
  if (e.code ==e.code //'user-not-found'
  ) {
    print('No user found for that email.');
    AwesomeDialog(
            context: context,
            dialogType: DialogType.error,
            animType: AnimType.rightSlide,
            title: 'error',
            desc: 'No user found for that email',
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
            ).show();
  } else if (e.code == e.code //'wrong-password'
  ) {
    print('Wrong password provided for that user.');
    AwesomeDialog(
            context: context,
            dialogType: DialogType.error,
            animType: AnimType.rightSlide,
            title: 'error',
            desc: 'Wrong password provided for that user',
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
            ).show();
  }
}//credential

          }),
          Container(height: 20),

          MaterialButton(
              height: 40,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.red[700],
              textColor: Colors.white,
              onPressed: () {},
              child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
               children: [
                   Text("Login With Google  "),
                   
                 
                ],
              ),
              ),
              
          Container(height: 20),
          
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed("signup") ; 
            },
            child:  Center(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: "Don't Have An Account ? ",
                ),
                TextSpan(
                    text: "Register",
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold)),
              ])),
            ),
          )
        ]),
      ),
    );
  }
}
