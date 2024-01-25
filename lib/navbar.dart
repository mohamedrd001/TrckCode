import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:trck/Screens/HomeScreens/Home.dart';
import 'package:trck/Screens/HomeScreens/Offer.dart';
import 'package:trck/Screens/HomeScreens/History.dart';
import 'package:trck/Screens/HomeScreens/Compte.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State {
  int pageIndex = 0;

  List<Widget> pages = [
    const Home(),
    const Offer(),
    const History(),
    const Compte(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.08,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 248, 248, 248),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(153, 201, 201, 201),
            blurRadius: 3.0,
            spreadRadius: 1,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: Colors.transparent,
                height: 40,
                width: MediaQuery.of(context).size.width * 0.20,
                child: IconButton(
                  highlightColor: const Color.fromARGB(17, 33, 157, 188),
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  icon: pageIndex == 0
                      ? const Icon(
                          IconlyBold.home,
                          color: Color.fromARGB(255, 33, 157, 188),
                          size: 30,
                        )
                      : const Icon(
                          IconlyLight.home,
                          color: Color.fromARGB(255, 161, 161, 161),
                          size: 30,
                        ),
                ),
              ),
              const Text("Accueil")
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: Colors.transparent,
                height: 40,
                width: MediaQuery.of(context).size.width * 0.20,
                child: IconButton(
                  highlightColor: const Color.fromARGB(17, 33, 157, 188),
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  icon: pageIndex == 1
                      ? const Icon(
                          IconlyBold.ticket,
                          color: Color.fromARGB(255, 33, 157, 188),
                          size: 30,
                        )
                      : const Icon(
                          IconlyLight.ticket,
                          color: Color.fromARGB(255, 161, 161, 161),
                          size: 30,
                        ),
                ),
              ),
              const Text("Offer")
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: Colors.transparent,
                height: 40,
                width: MediaQuery.of(context).size.width * 0.20,
                child: IconButton(
                  highlightColor: const Color.fromARGB(17, 33, 157, 188),
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 2;
                    });
                  },
                  icon: pageIndex == 2
                      ? const Icon(
                          IconlyBold.document,
                          color: Color.fromARGB(255, 33, 157, 188),
                          size: 30,
                        )
                      : const Icon(
                          IconlyLight.document,
                          color: Color.fromARGB(255, 161, 161, 161),
                          size: 30,
                        ),
                ),
              ),
              const Text("History")
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                color: Colors.transparent,
                height: 40,
                width: MediaQuery.of(context).size.width * 0.20,
                child: IconButton(
                  highlightColor: const Color.fromARGB(17, 33, 157, 188),
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 3;
                    });
                  },
                  icon: pageIndex == 3
                      ? const Icon(
                          IconlyBold.profile,
                          color: Color.fromARGB(255, 33, 157, 188),
                          size: 35,
                        )
                      : const Icon(
                          IconlyLight.profile,
                          color: Color.fromARGB(255, 161, 161, 161),
                          size: 35,
                        ),
                ),
              ),
              const Text("Compte")
            ],
          ),
        ],
      ),
    );
  }
}
