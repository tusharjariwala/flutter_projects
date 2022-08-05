import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutters_flashchat/screens/chat_screen.dart';
import 'package:flutters_flashchat/screens/login_screen.dart';
import 'package:flutters_flashchat/screens/registration_screen.dart';
import 'package:flutters_flashchat/screens/welcome_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  const FlashChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute:WelcomeScreen.id,
      routes: {
        WelcomeScreen.id:(context) => WelcomeScreen(),
        LoginScreen.id:(context) => LoginScreen(),
    RegistrationScreen.id:(context)=>RegistrationScreen(),
    ChatScreen.id:(context)=> ChatScreen(),
      },
    );
  }
}
