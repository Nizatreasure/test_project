import 'package:flutter/material.dart';

class VideoContainer extends StatelessWidget {
  final String imageName;
  final String userName;
  final String number;
  const VideoContainer(
      {Key? key,
      required this.imageName,
      required this.userName,
      required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 182,
              width: 121,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(0, 0, 0, 0.4),
                    Color.fromRGBO(0, 0, 0, 0),
                  ],
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/$imageName.jpg',
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 8,
              left: 5,
              child: Row(
                children: [
                  const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 7),
                  Text(
                    number,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: -20,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset('assets/$imageName' '_pair.jpg'),
              ),
            )
          ],
        ),
        const SizedBox(height: 19),
        Text(
          '@$userName',
          style: const TextStyle(
            color: Color.fromRGBO(51, 51, 51, 1),
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        )
      ],
    );
  }
}
