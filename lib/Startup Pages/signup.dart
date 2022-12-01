import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prealpha/constants.dart';
import 'package:prealpha/Startup%20Pages/login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: kBackgroundColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => const LoginPage()));
            },
            icon:
                const Icon(Icons.arrow_back_ios, size: 20, color: Colors.white),
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FadeInUp(
                        delay: const Duration(milliseconds: 600),
                        duration: const Duration(milliseconds: 600),
                        child: Text(
                          "Create New Account",
                          style: GoogleFonts.montserrat(
                              fontSize: 30,
                              height: 1.3,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FadeInUp(
                        delay: const Duration(milliseconds: 600),
                        duration: const Duration(milliseconds: 600),
                        child: Text(
                          "Fill in the details below",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              fontSize: 15,
                              height: 1.2,
                              fontWeight: FontWeight.w400,
                              color: Colors.white38),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                        width: 100,
                      ),
                      FadeInUp(
                          delay: const Duration(milliseconds: 600),
                          duration: const Duration(milliseconds: 600),
                          child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 6),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 5),
                              width: MediaQuery.of(context).size.width * 2.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white10),
                              child: TextField(
                                  cursorColor: kPrimaryColor,
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white),
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(
                                        IconData(0xe491,
                                            fontFamily: 'MaterialIcons'),
                                        color: Colors.white54,
                                        size: 18),
                                    hintText: 'Full Name',
                                    fillColor: Colors.white,
                                    border: InputBorder.none,
                                    hintStyle: GoogleFonts.montserrat(
                                        color: Colors.white54, fontSize: 14),
                                  )))),
                      const SizedBox(height: 10),
                      FadeInUp(
                          delay: const Duration(milliseconds: 600),
                          duration: const Duration(milliseconds: 600),
                          child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 6),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 5),
                              width: MediaQuery.of(context).size.width * 2.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white10),
                              child: TextField(
                                  cursorColor: kPrimaryColor,
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white),
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.email,
                                        color: Colors.white54, size: 16),
                                    hintText: 'Email Address',
                                    fillColor: Colors.white,
                                    border: InputBorder.none,
                                    hintStyle: GoogleFonts.montserrat(
                                        color: Colors.white54, fontSize: 14),
                                  )))),
                      const SizedBox(
                        height: 10,
                      ),
                      FadeInUp(
                          delay: const Duration(milliseconds: 600),
                          duration: const Duration(milliseconds: 600),
                          child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 6),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 5),
                              width: MediaQuery.of(context).size.width * 2.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white10),
                              child: TextField(
                                  cursorColor: kPrimaryColor,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white),
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(
                                        IconData(0xf019b,
                                            fontFamily: 'MaterialIcons'),
                                        color: Colors.white54,
                                        size: 16),
                                    hintText: 'Phone Number',
                                    fillColor: Colors.white,
                                    border: InputBorder.none,
                                    hintStyle: GoogleFonts.montserrat(
                                        color: Colors.white54, fontSize: 14),
                                  )))),
                      const SizedBox(height: 10),
                      FadeInUp(
                          delay: const Duration(milliseconds: 600),
                          duration: const Duration(milliseconds: 600),
                          child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 6),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 5),
                              width: MediaQuery.of(context).size.width * 2.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white10),
                              child: TextField(
                                  cursorColor: kPrimaryColor,
                                  obscureText: true,
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white),
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.password,
                                        color: Colors.white54, size: 16),
                                    hintText: 'Password',
                                    fillColor: Colors.white,
                                    border: InputBorder.none,
                                    hintStyle: GoogleFonts.montserrat(
                                        color: Colors.white54, fontSize: 14),
                                  )))),
                      const SizedBox(height: 50),
                      FadeInUp(
                        delay: const Duration(milliseconds: 600),
                        duration: const Duration(milliseconds: 600),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginPage()));
                                  },
                                  color: const Color(0xFF5468FF),
                                  height: 45,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  padding: const EdgeInsets.only(
                                      left: 120,
                                      right: 120,
                                      bottom: 20,
                                      top: 20),
                                  child: Center(
                                    child: Text(
                                      "Sign Up",
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 0),
                      FadeInUp(
                        delay: const Duration(milliseconds: 600),
                        duration: const Duration(milliseconds: 600),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Have an Account?',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const LoginPage(),
                                      ));
                                },
                                child: Text('Sign In',
                                    style: GoogleFonts.montserrat(
                                        color: const Color(0xFF5468FF),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500))),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
