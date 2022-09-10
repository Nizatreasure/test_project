import 'package:flutter/material.dart';
import 'package:test_project/buttom_navbar.dart';
import 'package:test_project/join_challenge.dart';
import 'package:test_project/video_container.dart';

class SingleEvent extends StatefulWidget {
  final String participants;
  final String imageName;
  final String title;
  final String votes;
  const SingleEvent({
    Key? key,
    required this.participants,
    required this.imageName,
    required this.title,
    required this.votes,
  }) : super(key: key);

  @override
  State<SingleEvent> createState() => _SingleEventState();
}

class _SingleEventState extends State<SingleEvent>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

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
                  margin: const EdgeInsets.only(right: 9, left: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                      IconButton(
                        onPressed: () {},
                        icon: Transform.rotate(
                          angle: 100,
                          child: const Icon(
                            Icons.send_outlined,
                            color: Color.fromRGBO(34, 34, 34, 1),
                            size: 27,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 254,
                        child: Column(
                          children: [
                            const SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: const TextStyle(
                                      color: Color.fromRGBO(36, 36, 36, 1),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    text: widget.participants,
                                    children: const [
                                      TextSpan(
                                        text: '\nparticipants',
                                        style: TextStyle(
                                          color: Color.fromRGBO(68, 68, 68, 1),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 21),
                                Container(
                                  height: 75,
                                  width: 75,
                                  padding: const EdgeInsets.all(1),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    border: Border.all(
                                      color:
                                          const Color.fromRGBO(245, 43, 41, 1),
                                      width: 2,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(24),
                                    child: Hero(
                                      tag: widget.imageName,
                                      child: Image.asset(
                                        'assets/${widget.imageName}.jpg',
                                        alignment: Alignment.topCenter,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 29),
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: const TextStyle(
                                      color: Color.fromRGBO(36, 36, 36, 1),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    text: widget.votes,
                                    children: const [
                                      TextSpan(
                                        text: '\nvotes',
                                        style: TextStyle(
                                          color: Color.fromRGBO(68, 68, 68, 1),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Text(
                              '#${widget.title}' 'Challenge',
                              style: const TextStyle(
                                color: Color.fromRGBO(22, 23, 34, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 4),
                            RichText(
                              textAlign: TextAlign.center,
                              text: const TextSpan(
                                style: TextStyle(
                                  color: Color.fromRGBO(102, 102, 102, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                text: 'Creator:',
                                children: [
                                  TextSpan(
                                    text: ' pwety_doll',
                                    style: TextStyle(
                                      color: Color.fromRGBO(245, 43, 41, 1),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 58),
                              child: Text(
                                'Join the #${widget.title}'
                                'Challenge for a chance to win amazing prizes',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Color.fromRGBO(108, 108, 108, 1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 44,
                                width: 152,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    color:
                                        const Color.fromRGBO(213, 213, 214, 1),
                                    width: 1,
                                  ),
                                ),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'See full details',
                                        style: TextStyle(
                                          color: Color.fromRGBO(22, 23, 34, 1),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(width: 12),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size: 16,
                                      )
                                    ]),
                              ),
                            )
                          ],
                        ),
                      ),
                      TabBar(
                        tabs: const [
                          Tab(text: 'Top Videos'),
                          Tab(text: 'New Videos')
                        ],
                        labelStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        labelColor: const Color.fromRGBO(22, 23, 34, 1),
                        unselectedLabelColor:
                            const Color.fromRGBO(140, 140, 141, 1),
                        controller: _tabController,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorColor: const Color.fromRGBO(245, 43, 41, 1),
                        indicatorPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        indicatorWeight: 3,
                      ),
                      Container(
                        height: 900,
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Color.fromRGBO(218, 219, 221, 1),
                              width: 1,
                            ),
                          ),
                        ),
                        child:
                            TabBarView(controller: _tabController, children: [
                          Container(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: GridView(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 16,
                                mainAxisExtent: 230,
                              ),
                              padding:
                                  const EdgeInsets.only(top: 16, bottom: 150),
                              children: images.map((imageData) {
                                return VideoContainer(
                                    imageName: imageData['imageName'],
                                    userName: imageData['userName'],
                                    number: imageData['number']);
                              }).toList(),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 16, right: 16),
                            child: GridView(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 16,
                                  mainAxisExtent: 230,
                                ),
                                padding:
                                    const EdgeInsets.only(top: 16, bottom: 150),
                                children: [
                                  VideoContainer(
                                      imageName: images[2]['imageName'],
                                      userName: images[2]['userName'],
                                      number: images[2]['number']),
                                  VideoContainer(
                                      imageName: images[1]['imageName'],
                                      userName: images[1]['userName'],
                                      number: images[1]['number']),
                                ]),
                          )
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const BottomNavBar(),
            Positioned(
              bottom: 95,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => JoinChallenge(
                          imageName: widget.imageName, title: widget.title),
                    ),
                  );
                },
                child: Container(
                  height: 52,
                  width: 211,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(248, 36, 64, 1),
                    borderRadius: BorderRadius.circular(26),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 8,
                        spreadRadius: 0,
                        color: Color.fromRGBO(0, 0, 0, 0.3),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/star.png'),
                      const SizedBox(width: 12),
                      const Text(
                        'Join the challenge',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> images = [
  {'imageName': 'Video', 'userName': 'chidinma_ah', 'number': '921'},
  {'imageName': 'Video2', 'userName': 'tayediggs', 'number': '4.4k'},
  {'imageName': 'Video3', 'userName': 'dianerusset', 'number': '5.2k'},
  {'imageName': 'Video4', 'userName': 'stephen_g', 'number': '985'},
  {'imageName': 'Video5', 'userName': 'brian_wilson', 'number': '2.2k'},
  {'imageName': 'Video6', 'userName': 'tope_salu', 'number': '12.6k'},
  {'imageName': 'Video3', 'userName': 'suzieq', 'number': '2.2k'},
  {'imageName': 'Video', 'userName': 'theartlord', 'number': '9.2k'},
  {'imageName': 'Video4', 'userName': 'stephen_md', 'number': '3.2k'},
];
