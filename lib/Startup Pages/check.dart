import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:prealpha/Startup%20Pages/login.dart';
import 'package:prealpha/Startup%20Pages/splash.dart';
import 'package:prealpha/Startup%20Pages/welcomescreen.dart';
import 'package:prealpha/constants.dart';

class CheckScreen extends StatefulWidget {
  const CheckScreen({Key? key}) : super(key: key);

  @override
  State<CheckScreen> createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return const SplashScreen();
              } else {
                return const WelcomeScreen();
              }
            }));
  }
}