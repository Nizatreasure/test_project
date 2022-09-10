import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 85,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
          border: Border.all(
            color: const Color.fromRGBO(217, 217, 217, 1),
            width: 1,
          ),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          SizedBox(
            height: 30,
            width: 32,
            child: Image.asset('assets/Home_icon.png'),
          ),
          Container(
            width: 32,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color.fromRGBO(116, 117, 119, 1),
                width: 2.5,
              ),
            ),
            child: Image.asset('assets/second_icon.png'),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(245, 43, 41, 1),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 35,
            ),
          ),
          Container(
            width: 32,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(52, 52, 52, 1),
            ),
            child: Image.asset('assets/star_icon.png'),
          ),
          Container(
            width: 32,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(52, 52, 52, 1),
            ),
            child: Image.asset('assets/profile.png'),
          ),
        ]),
      ),
    );
  }
}
