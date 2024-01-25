// ignore_for_file: avoid_print

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:trck/widgets/BottomSheet.dart';
import 'package:trck/widgets/buttons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List imageList = [
    {"id": 1, "image_path": 'images/home/slide1.png'},
    {"id": 2, "image_path": 'images/home/slide2.png'},
    {"id": 3, "image_path": 'images/home/slide.png'}
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true, // like this!
          backgroundColor:  Colors.white,
          toolbarHeight: MediaQuery.of(context).size.height * 0.1,
          toolbarOpacity: 0.5,
          title: Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset(
                              'images/car.png',
                              height: 22,
                            )),
                        const Text(
                          "AUDI RS6",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Asap',
                          ),
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: Image.asset(
                              'images/map.png',
                              height: 22,
                            )),
                        const Text(
                          'Sétif,Sétif,Algiria',
                          style: TextStyle(
                            color: Color.fromARGB(
                                255, 66, 66, 66), // Set the text color.
                            fontSize: 15,
                            fontFamily: 'Asap', // Set the text size.
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Image.asset('images/fds.png'),
            ),
          ]),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.9,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, bottom: 5),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Promo",
                          style: TextStyle(
                            fontFamily: 'Asap',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                        ),
                        Text(
                          'Flutter is an open-source UI software ',
                          style: TextStyle(
                              fontFamily: 'Asap',
                              color: Colors.grey, // Set the text color.
                              fontSize: 16 // Set the text size.
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  //alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.15,
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          print(currentIndex);
                        },
                        child: CarouselSlider(
                          items: imageList
                              .map(
                                (item) => Image.asset(
                                  item['image_path'],
                                  fit: BoxFit.cover,
                                  // width: double.infinity,
                                ),
                              )
                              .toList(),
                          carouselController: carouselController,
                          options: CarouselOptions(
                            scrollPhysics: const BouncingScrollPhysics(),
                            autoPlay: true,
                            aspectRatio: 2,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 2,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imageList.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () =>
                                carouselController.animateToPage(entry.key),
                            child: Container(
                              width: currentIndex == entry.key ? 17 : 8,
                              height: 8.0,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: currentIndex == entry.key
                                    ? Colors.white
                                    : const Color.fromARGB(255, 33, 157, 188),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, bottom: 5, top: 5),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Services",
                          style: TextStyle(
                            fontFamily: 'Asap',
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                        ),
                        Text(
                          'Flutter is an open-source UI software ',
                          style: TextStyle(
                              fontFamily:'Asap',
                              color: Colors.grey, // Set the text color.
                              fontSize: 16 // Set the text size.
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonItem(
                    title: 'Depannage',
                    image: Image.asset(
                      'images/2.png',
                    ),
                    onTap: () {
                      showSheet(
                        context,
                        image1: Image.asset(
                          "images/7.png",
                        ),
                        image2: Image.asset(
                          "images/pomp.png",
                        ),
                        image3: Image.asset(
                          "images/10.png",
                        ),
                        image4: Image.asset(
                          "images/212.png",
                        ),
                        title1: 'Tow truck',
                        title2: 'Station',
                        title3: 'Accident',
                        title4: 'Maintenance',
                      );
                    },
                  ),
                  ButtonItem(
                    title: 'Transport',
                    image: Image.asset(
                      'images/1.png',
                    ),
                    onTap: () {
                      showSheet(
                        context,
                        image1: Image.asset("images/5.png"),
                        image2: Image.asset("images/8.png"),
                        image3: Image.asset("images/4.png"),
                        image4: Image.asset("images/3.png"),
                        title1: 'Van',
                        title2: 'Truck',
                        title3: 'semi Truck',
                        title4: 'Mini Truck ',
                      );
                    },
                    
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
