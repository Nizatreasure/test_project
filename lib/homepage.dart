import 'package:flutter/material.dart';
import 'package:test_project/home_container.dart';
import 'package:test_project/single_event.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 3, 11),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                fillColor: const Color.fromRGBO(241, 241, 241, 1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                hintText: 'Search',
                hintStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(116, 117, 119, 1),
                ),
                constraints: const BoxConstraints(maxHeight: 50),
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  color: Color.fromRGBO(10, 10, 10, 1),
                  size: 25,
                ),
              ),
              cursorColor: const Color.fromRGBO(10, 10, 10, 1),
              cursorWidth: 1.5,
              cursorHeight: 24,
              style: const TextStyle(
                height: 1.4,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(116, 117, 119, 1),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(bottom: 100),
              physics: const BouncingScrollPhysics(),
              children: challenges.map((challenge) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SingleEvent(
                          participants: challenge['subtitle'],
                          imageName: challenge['imageName'],
                          title: challenge['title'],
                          votes: challenge['votes'],
                        ),
                      ),
                    );
                  },
                  child: Hero(
                    tag: challenge['imageName'],
                    child: HomeContainer(
                      imageName: challenge['imageName'],
                      title: challenge['title'],
                      subtitle: challenge['subtitle'],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> challenges = [
  {
    'imageName': 'Background',
    'title': 'StrikeaPose',
    'subtitle': '75k',
    'votes': '15k'
  },
  {
    'imageName': 'Background2',
    'title': 'Foodlums',
    'subtitle': '200k',
    'votes': '103k'
  },
  {
    'imageName': 'Background3',
    'title': 'ShowYouOff',
    'subtitle': '500k',
    'votes': '150k'
  },
  {
    'imageName': 'Background4',
    'title': 'IsItCake',
    'subtitle': '75k',
    'votes': '15k'
  },
  {
    'imageName': 'Background5',
    'title': 'Buga',
    'subtitle': '54k',
    'votes': '5k'
  },
  {
    'imageName': 'Background6',
    'title': 'Blackdon\'tCrack',
    'subtitle': '2M',
    'votes': '1.5M'
  },
];
