import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  final String imageName;
  final String title;
  final String subtitle;
  const HomeContainer(
      {required this.imageName,
      required this.title,
      required this.subtitle,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(69, 81, 84, 0),
                Color.fromRGBO(0, 0, 0, 0.45),
              ],
            ),
          ),
          margin: const EdgeInsets.symmetric(vertical: 6),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/$imageName.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 138,
          left: 16,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '#$title',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                '$subtitle participants',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color.fromRGBO(214, 214, 214, 1),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
