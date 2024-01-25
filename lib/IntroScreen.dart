// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:trck/widgets/buttons.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          centerTitle: true, // like this!
          backgroundColor: const Color.fromARGB(15, 33, 157, 188),
          toolbarHeight: MediaQuery.of(context).size.height * 0.15,
          toolbarOpacity: 0.5,
          title: Center(
            child: SizedBox(
              child: Image.asset(
                'images/fds.png',
                height: 120,
              ),
            ),
          ),
        ),
        body: Stack(
          //mainAxisAlignment: MainAxisAlignment.end,
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              color: const Color.fromARGB(15, 33, 157, 188),
              alignment: AlignmentDirectional.topCenter,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset(
                  'images/11.png',
                  height: 280,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.elliptical(200, 50),
                    topRight: Radius.elliptical(200, 50),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade600,
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                    BoxShadow(
                      color: Colors.grey.shade300,
                      offset: const Offset(-5, 0),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Promo",
                              style: TextStyle(
                                fontFamily: 'Cabin',
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                              // textAlign: TextAlign.left,
                              // textDirection: TextDirection.ltr,
                            ),
                            Text(
                              ' Flutter is an open-source UI software  Flutter is an open-source UI software  Flutter is an open-source UI software Flutter is an open-source UI software Flutter is an open-source UI software',
                              style: TextStyle(
                                  fontFamily: 'Dosis',
                                  color: Colors.grey, // Set the text color.
                                  fontSize: 16 // Set the text size.
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ButtonA(onPressed: () {}, title: 'Commencer',),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
