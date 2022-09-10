import 'package:flutter/material.dart';

class JoinChallenge extends StatefulWidget {
  final String imageName;
  final String title;

  const JoinChallenge({Key? key, required this.imageName, required this.title})
      : super(key: key);

  @override
  State<JoinChallenge> createState() => _JoinChallengeState();
}

class _JoinChallengeState extends State<JoinChallenge> {
  bool save = true;
  bool allowComments = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                Container(
                  height: 60,
                  padding: const EdgeInsets.only(left: 9),
                  decoration: const BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      color: Color.fromRGBO(218, 219, 221, 1),
                      width: 1,
                    ),
                  )),
                  child: Stack(alignment: Alignment.centerLeft, children: [
                    Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'Share',
                        style: TextStyle(
                          color: Color.fromRGBO(22, 23, 34, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Color.fromRGBO(34, 34, 34, 1),
                        size: 27,
                      ),
                    ),
                  ]),
                ),
                Expanded(
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.only(bottom: 80),
                    children: [
                      Container(
                        height: 180,
                        margin: const EdgeInsets.fromLTRB(17, 0, 19, 0),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color.fromRGBO(218, 219, 221, 1),
                              width: 1,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                  height: 131,
                                  width: 102,
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color.fromRGBO(0, 0, 0, 0),
                                        Color.fromRGBO(0, 0, 0, 0.4)
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/${widget.imageName}.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  bottom: 6,
                                  child: Text(
                                    'Select cover',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 15),
                            SizedBox(
                              height: 131,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Text(
                                      'Describe your video',
                                      style: TextStyle(
                                        color: Color.fromRGBO(136, 136, 136, 1),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 32,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              213, 213, 215, 1),
                                          width: 1),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Text(
                                      '#${widget.title}Challenge',
                                      style: const TextStyle(
                                        color: Color.fromRGBO(34, 34, 34, 1),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(22, 13, 21, 0),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Row(
                                children: const [
                                  Icon(Icons.person_outline_outlined,
                                      color: Color.fromRGBO(140, 141, 145, 1),
                                      size: 26),
                                  SizedBox(width: 18),
                                  Text(
                                    'Tag people',
                                    style: TextStyle(
                                      color: Color.fromRGBO(34, 34, 34, 1),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18,
                                    color: Color.fromRGBO(151, 152, 159, 1),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Row(
                                children: const [
                                  Icon(Icons.lock_open_outlined,
                                      color: Color.fromRGBO(140, 141, 145, 1),
                                      size: 26),
                                  SizedBox(width: 18),
                                  Expanded(
                                    child: Text(
                                      'Who can watch this video',
                                      style: TextStyle(
                                        color: Color.fromRGBO(34, 34, 34, 1),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Everyone',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color.fromRGBO(119, 119, 153, 1),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18,
                                    color: Color.fromRGBO(151, 152, 159, 1),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Row(
                                children: const [
                                  Icon(Icons.location_pin,
                                      color: Color.fromRGBO(140, 141, 145, 1),
                                      size: 26),
                                  SizedBox(width: 18),
                                  Text(
                                    'Add location',
                                    style: TextStyle(
                                      color: Color.fromRGBO(34, 34, 34, 1),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18,
                                    color: Color.fromRGBO(151, 152, 159, 1),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Row(
                                children: [
                                  const Icon(Icons.comment_outlined,
                                      color: Color.fromRGBO(140, 141, 145, 1),
                                      size: 26),
                                  const SizedBox(width: 18),
                                  const Text(
                                    'Allow comments',
                                    style: TextStyle(
                                      color: Color.fromRGBO(34, 34, 34, 1),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const Spacer(),
                                  Switch(
                                      value: allowComments,
                                      activeColor:
                                          const Color.fromRGBO(254, 43, 84, 1),
                                      onChanged: (val) {
                                        setState(() {
                                          allowComments = val;
                                        });
                                      })
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Row(
                                children: [
                                  const Icon(Icons.download_outlined,
                                      color: Color.fromRGBO(140, 141, 145, 1),
                                      size: 26),
                                  const SizedBox(width: 18),
                                  const Text(
                                    'Save to device',
                                    style: TextStyle(
                                      color: Color.fromRGBO(34, 34, 34, 1),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const Spacer(),
                                  Switch(
                                      value: save,
                                      activeColor:
                                          const Color.fromRGBO(254, 43, 84, 1),
                                      onChanged: (val) {
                                        setState(() {
                                          save = val;
                                        });
                                      })
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(21, 15, 21, 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromRGBO(213, 213, 215, 1),
                            width: 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'Save draft',
                        style: TextStyle(
                          color: Color.fromRGBO(34, 34, 34, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromRGBO(237, 49, 38, 1),
                      ),
                      child: const Text(
                        'Share',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
