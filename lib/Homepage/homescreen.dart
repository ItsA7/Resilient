import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:boxicons/boxicons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prealpha/Homepage/bottom_nav_bar.dart';
import 'package:prealpha/Homepage/categories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF07213b),
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: const Color(0xFF07213b),
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Boxicons.bx_menu_alt_left,
              size: 30,
              color: Colors.white,
            )),
        title: Text(
          'Resilient',
          style: GoogleFonts.montserrat(
              fontSize: 28,
              height: 1.3,
              fontWeight: FontWeight.w600,
              color: Colors.white),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(Boxicons.bx_notification,
                  size: 30, color: Colors.white))
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FadeIn(
                    delay: const Duration(milliseconds: 600),
                    duration: const Duration(milliseconds: 600),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 180,
                          width: MediaQuery.of(context).size.width,
                          child: Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.only(top: 30),
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFFD6D6D6)
                                        .withOpacity(0.8),
                                    boxShadow: const [
                                      BoxShadow(
                                          blurRadius: 15, offset: Offset(8, 8))
                                    ]),
                              ),
                              Container(
                                  height: 120,
                                  width: MediaQuery.of(context).size.width,
                                  margin:
                                      const EdgeInsets.only(left: 200, top: 45),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xFFD6D6D6)
                                          .withOpacity(0.0),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/images/open-doodles-zombieing.png')))),
                              Container(
                                width: double.maxFinite,
                                height: 140,
                                color: Colors.redAccent.withOpacity(0.0),
                                margin: const EdgeInsets.only(
                                    right: 160, top: 47, left: 25),
                                child: Column(
                                  children: [
                                    Text(
                                      "Reinvent the perspective of your mental health.",
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 17,
                                          height: 1.2,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black87),
                                    ),
                                    const SizedBox(height: 10),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: OutlinedButton(
                                            onPressed: () {},
                                            child: Text(
                                              "Get Started",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black87,
                                              ),
                                            )))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 35),
                        Row(
                          children: [
                            Text(
                              "Categories",
                              style: GoogleFonts.montserrat(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white70,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            MyButton(
                                iconImagePath:
                                    'assets/images/open-doodles-sitting-and-reading.png',
                                buttonText: 'eBooks'),
                            MyButton(
                              iconImagePath:
                                  'assets/images/open-doodles-loving.png',
                              buttonText: 'Symptoms',
                            ),
                            MyButton(
                              iconImagePath:
                                  'assets/images/open-doodles-dancing.png',
                              buttonText: 'Podcasts',
                            )
                          ],
                        ),
                        const SizedBox(height: 35),
                        Row(
                          children: [
                            Text(
                              "Communities",
                              style: GoogleFonts.montserrat(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white70,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          child: Stack(children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.only(top: 10),
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color(0xFFD6D6D6).withOpacity(0.8),
                                  boxShadow: const [
                                    BoxShadow(
                                        blurRadius: 15, offset: Offset(8, 8))
                                  ]),
                            ),
                            Container(
                                height: 140,
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.only(
                                    right: 180, top: 35, left: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFFD6D6D6)
                                        .withOpacity(0.0),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/open-doodles-sprinting.png')))),
                            Container(
                              width: double.maxFinite,
                              height: 140,
                              color: Colors.redAccent.withOpacity(0.0),
                              margin: const EdgeInsets.only(
                                  right: 25, top: 50, left: 160),
                              child: Column(
                                children: [
                                  Text(
                                    "Explore the communities we have for you.",
                                    textAlign: TextAlign.end,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 17,
                                        height: 1.2,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black87),
                                  ),
                                  const SizedBox(height: 10),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: OutlinedButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Explore",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black87,
                                            ),
                                          )))
                                ],
                              ),
                            )
                          ]),
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      )),
    );
  }
}
