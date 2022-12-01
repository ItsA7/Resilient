import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const MyButton(
      {Key? key, required this.iconImagePath, required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FadeIn(
        child: InkWell(
          borderRadius: BorderRadius.circular(22),
          child: Ink(
            height: 100,
            width: 100,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: const Color(0xFFD6D6D6).withOpacity(0.8),
                borderRadius: BorderRadius.circular(22),
                boxShadow: const [
                  BoxShadow(blurRadius: 15, offset: Offset(8, 8))
                ]),
            child: Center(child: Image.asset(iconImagePath)),
          ),
          onTap: () {},
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      FadeIn(
        child: Text(
          buttonText,
          style: GoogleFonts.montserrat(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      )
    ]);
  }
}
