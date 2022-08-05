import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutters_flashchat/components/rounded_button.dart';
import 'package:flutters_flashchat/constants.dart';
import 'chat_screen.dart';
class RegistrationScreen extends StatefulWidget {
  static const String id = "registration_screen";
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth =FirebaseAuth.instance;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                email=value;
              },
              decoration:kTextFieldDecoration.copyWith(hintText: 'Enter the Email'),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password=value;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter the Password'),
            ),
            SizedBox(
              height: 24.0,
            ),
           RoundedButton(
             title: 'Register',
             colour: Colors.blueAccent,
             onPressed: () async{
            // print(email);
            // print(password);
               try{
                 final newUser=await _auth.createUserWithEmailAndPassword(email: email, password: password);
                 if(newUser != null)
                   {
                      Navigator.pushNamed(context, ChatScreen.id);
                   }
               }
               catch(e)
               {
                 print(e);
               }

             },
           )
          ],
        ),
      ),
    );
  }
}
