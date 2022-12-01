import 'package:animate_do/animate_do.dart';
import 'package:boxicons/boxicons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:prealpha/constants.dart';
import 'package:prealpha/Startup%20Pages/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kBackgroundColor,
        ),
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Stack(children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FadeInUp(
                      delay: const Duration(milliseconds: 600),
                      duration: const Duration(milliseconds: 600),
                      child: Text(
                        "Welcome",
                        style: GoogleFonts.montserrat(
                            fontSize: 32,
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
                        "Please sign in to your account",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
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
                            margin: const EdgeInsets.symmetric(vertical: 6),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 5),
                            width: MediaQuery.of(context).size.width * 2.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white10),
                            child: TextField(
                                controller: _emailController,
                                cursorColor: kPrimaryColor,
                                style:
                                    GoogleFonts.montserrat(color: Colors.white),
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Iconsax.user,
                                      color: Colors.white54, size: 16),
                                  hintText: 'Email ID',
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
                            margin: const EdgeInsets.symmetric(vertical: 6),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 5),
                            width: MediaQuery.of(context).size.width * 2.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white10),
                            child: TextField(
                                controller: _passwordController,
                                cursorColor: kPrimaryColor,
                                obscureText: true,
                                style:
                                    GoogleFonts.montserrat(color: Colors.white),
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Iconsax.key,
                                      color: Colors.white54, size: 16),
                                  hintText: 'Password',
                                  fillColor: Colors.white,
                                  border: InputBorder.none,
                                  hintStyle: GoogleFonts.montserrat(
                                      color: Colors.white54, fontSize: 14),
                                )))),
                    const SizedBox(
                      height: 0,
                    ),
                    FadeInUp(
                      delay: const Duration(milliseconds: 600),
                      duration: const Duration(milliseconds: 600),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text('Forgot Password?',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.white54,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400))),
                        ],
                      ),
                    ),
                    const SizedBox(height: 60),
                    FadeInUp(
                      delay: const Duration(milliseconds: 600),
                      duration: const Duration(milliseconds: 600),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MaterialButton(
                                onPressed: signIn,
                                color: const Color(0xFF5468FF),
                                height: 45,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                padding: const EdgeInsets.only(
                                    left: 120, right: 120, bottom: 20, top: 20),
                                child: Center(
                                  child: Text(
                                    "Login",
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
                    const SizedBox(height: 20),
                    FadeInUp(
                      delay: const Duration(milliseconds: 600),
                      duration: const Duration(milliseconds: 600),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              color: Colors.white,
                              height: 45,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              padding: const EdgeInsets.only(
                                  left: 50, right: 50, bottom: 20, top: 20),
                              child: const Center(
                                child: Icon(Boxicons.bxl_google),
                              ),
                            ),
                            const SizedBox(width: 20),
                            MaterialButton(
                              onPressed: () {},
                              color: Colors.white,
                              height: 45,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              padding: const EdgeInsets.only(
                                  left: 50, right: 50, bottom: 20, top: 20),
                              child: const Center(
                                child: Icon(Boxicons.bxl_facebook),
                              ),
                            )
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
                            'Don\'t have an Account?',
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
                                      builder: (context) => const SignUpPage(),
                                    ));
                              },
                              child: Text('SignUp',
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
            ])
          ],
        )));
  }
}
