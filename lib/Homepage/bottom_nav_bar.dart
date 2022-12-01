import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:prealpha/Homepage/user.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      height: 90,
      width: double.infinity,
      // double.infinity means it cove the available width
      decoration: BoxDecoration(
        color: const Color(0xFF07213b),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -7),
            blurRadius: 33,
            color: const Color(0xFF6DAED9).withOpacity(0.0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: const Icon(LineIcons.home),
            color: Colors.white,
            iconSize: 24,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(LineIcons.search),
            color: Colors.white,
            iconSize: 24,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(LineIcons.tools),
            color: Colors.white,
            iconSize: 24,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(LineIcons.user),
            color: Colors.white,
            iconSize: 24,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const UserPage()));
            },
          ),
        ],
      ),
    );
  }
}
