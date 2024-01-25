// ignore: file_names
import 'package:flutter/material.dart';
import 'package:trck/widgets/buttons.dart';

late final String title;
late final Image image1;
late final Image image2;
late final Image image3;
late final Image image4;
late final String title1;
late final String title2;
late final String title3;
late final String title4;

void showSheet(
  context, {
  required Image image1,
  required Image image2,
  required Image image3,
  required Image image4,
  required String title1,
  required String title2,
  required String title3,
  required String title4,
}) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          height: MediaQuery.of(context).size.height * 0.9,
          padding: const EdgeInsets.symmetric(vertical: 0),
          child: Wrap(
            spacing: 60,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 218, 218, 218)),
                    width: 40,
                    height: 5,
                  ),
                ),
              ),
              Container(
                alignment: AlignmentDirectional.centerStart,
                child: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Services",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                      ),
                      Text(
                        'Flutter is an open-source UI software ',
                        style: TextStyle(
                            color: Colors.grey, // Set the text color.
                            fontSize: 18 // Set the text size.
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    InBottomSheet(
                      title: title1,
                      image: image1,
                      onPressed: () {},
                    ),
                    InBottomSheet(
                      title: title2,
                      image: image2,
                      onPressed: () {},
                    ),
                    InBottomSheet(
                      title: title3,
                      image: image3,
                      onPressed: () {},
                    ),
                    InBottomSheet(
                      title: title4,
                      image: image4,
                      onPressed: () {},
                    ),

                  ],
                ),
              )
            ],
          ),
        );
      });
}
