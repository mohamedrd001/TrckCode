import 'package:flutter/material.dart';
import 'package:trck/widgets/ExpansionTile.dart';

class Compte extends StatefulWidget {
  const Compte({super.key});

  @override
  State<Compte> createState() => _P1State();
}

class _P1State extends State<Compte> {
  final ExpansionTileController controller = ExpansionTileController();
  final ExpansionTileController controller1 = ExpansionTileController();
  final ExpansionTileController controller2 = ExpansionTileController();
  final ExpansionTileController controller3 = ExpansionTileController();
  final ExpansionTileController controller4 = ExpansionTileController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 33, 157, 188),
      appBar: AppBar(
        centerTitle: true, // like this!
        backgroundColor: Colors.transparent,
        toolbarHeight: MediaQuery.of(context).size.height * 0.08,
        toolbarOpacity: 0.5,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:15 ),
            child: CircleAvatar(
              
              backgroundColor: const Color.fromARGB(55, 0, 0, 0),
              child: Image.asset('images/icons/affich.png',
              color: Colors.white,
              height: 45,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(255, 0, 0, 0), width: 3),
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: null,
                    radius: 45,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Mohamed Boustil",
                    style: TextStyle(
                        fontFamily: 'Asap',
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                    textDirection: TextDirection.ltr,
                  ),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(200, 30),
                        topRight: Radius.elliptical(200, 30)),
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    color: Colors.transparent,
                    height: MediaQuery.of(context).size.height * 0.48,
                    child: ListView(
                      children: [
                        ExpansionTileStart(
                          controllerE: controller1,
                          title: 'Information',
                          image: Image.asset('images/icons/edit.png'),
                          shapeC: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                          ),
                          childrenn: Column(
                            children: [
                              SousExpansionTileStart(
                                title: 'Personal information',
                                image: Image.asset('images/icons/profil.png'),
                                onPressed: () {},
                              ),
                              SousExpansionTileStart(
                                title: 'Car information',
                                image: Image.asset('images/icons/car.png'),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        ExpansionTileStart(
                          controllerE: controller2,
                          title: 'Settings',
                          image: Image.asset('images/icons/prmtr.png'),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                          ),
                          shapeC: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(),
                          ),
                          childrenn: Column(
                            children: [
                              SousExpansionTileStart(
                                title: 'Language',
                                image: Image.asset('images/icons/language.png'),
                                onPressed: () {},
                              ),
                              SousExpansionTileStart(
                                title: 'Display',
                                image: Image.asset('images/icons/affich.png'),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        ExpansionTileStart(
                          controllerE: controller3,
                          title: 'Social networks',
                          image: Image.asset('images/icons/network.png'),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                          ),
                          shapeC: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(),
                          ),
                          childrenn: Column(
                            children: [
                              SousExpansionTileStart(
                                title: 'Web site',
                                image: Image.asset('images/icons/web.png'),
                                onPressed: () {},
                              ),
                              SousExpansionTileStart(
                                title: 'Facebook',
                                image: Image.asset('images/icons/fb.png'),
                                onPressed: () {},
                              ),
                              SousExpansionTileStart(
                                title: 'Instagram',
                                image: Image.asset('images/icons/insta.png'),
                                onPressed: () {},
                              ),
                              SousExpansionTileStart(
                                title: 'X',
                                image: Image.asset('images/icons/x.png'),
                                onPressed: () {},
                              ),
                              SousExpansionTileStart(
                                title: 'TikTok',
                                image: Image.asset('images/icons/tiktok.png'),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        ExpansionTileStart(
                          controllerE: controller4,
                          title: 'Support',
                          image: Image.asset('images/icons/chat.png'),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                          ),
                          shapeC: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(),
                          ),
                          childrenn: Column(
                            children: [
                              SousExpansionTileStart(
                                title: 'Contact us',
                                image: Image.asset('images/icons/appel.png'),
                                onPressed: () {},
                              ),
                              SousExpansionTileStart(
                                title: 'Chat',
                                image:
                                    Image.asset('images/icons/messenger.png'),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        OutExpansionTileStart(
                          title: 'Legal Notice',
                          image: Image.asset('images/icons/we.png'),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(),
                          ),
                          onPressed: () {},
                        ),
                        OutExpansionTileStart(
                          title: 'Log out',
                          image: Image.asset('images/icons/exit.png'),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
