import 'package:flutter/material.dart';

class ButtonA extends StatelessWidget {
  const ButtonA({
    super.key,
    required this.onPressed,
    required this.title,
  });
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      //onPressed: onTap,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      padding: const EdgeInsets.all(1.0),
      onPressed: onPressed,
      child: Ink(
        height: 50,
        width: MediaQuery.of(context).size.width * 1,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 21, 167, 204),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Container(
          constraints: const BoxConstraints(
              minWidth: 88.0,
              minHeight: 50.0), // min sizes for Material buttons
          alignment: Alignment.center,

          child: Text(
            title,
            style: const TextStyle(
                fontSize: 30, color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
      ),
    );
  }
}
//////////////////////////////////////////////////////
///////////////////////////////////////////////////////
///
///
///

class ButtonB extends StatelessWidget {
  const ButtonB({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 1,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 168, 212, 223),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Container(
        constraints: const BoxConstraints(
            minWidth: 88.0, minHeight: 50.0), // min sizes for Material buttons
        alignment: Alignment.center,

        child: Text(
          title,
          style: const TextStyle(
              fontSize: 30, color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
    );
  }
}

class ButtonD extends StatelessWidget {
  const ButtonD({
    super.key,
    required this.onPressed,
    required this.titleb,
  });
  final String titleb;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      padding: const EdgeInsets.all(1.0),
      child: Ink(
        height: 50,
        width: MediaQuery.of(context).size.width * 1,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 0, 187, 156),
            Color.fromARGB(255, 153, 220, 240),
            Color.fromARGB(255, 153, 220, 240),
            Color.fromARGB(255, 0, 187, 156),
          ]),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Container(
          constraints: const BoxConstraints(
              minWidth: 88.0,
              minHeight: 50.0), // min sizes for Material buttons
          alignment: Alignment.center,

          child: Text(
            titleb,
            style: const TextStyle(
                fontSize: 30,
                fontFamily: 'Acme',
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
      ),
    );
  }
}
/////////////////////////////////////////
//////////////////////////////////////////

class ButtonC extends StatelessWidget {
  const ButtonC({
    super.key,
    required this.onPressed,
    required this.colorc,
    required this.titlec,
    required this.colorr,
  });
  final Color colorc;
  final Color colorr;
  final String titlec;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        side: BorderSide(color: colorr, width: 3),
        foregroundColor: colorc,
        minimumSize: Size(MediaQuery.of(context).size.width * 0.6, 50),
      ),
      onPressed: onPressed,
      child: Text(
        titlec,
        style: const TextStyle(
            fontSize: 25, fontFamily: 'Acme', color: Colors.black),
      ),
    );
  }
}

//////////////////////////////
/////
/////////////////////////////////
///

class ButtonItem extends StatelessWidget {
  const ButtonItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.image,
  });
  final String title;
  final Image image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 170,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(1, 1.3),
                    colors: [
                      Color.fromARGB(255, 255, 255, 255),
                      Color.fromARGB(255, 240, 240, 240),
                      Color.fromARGB(255, 240, 240, 240),
                      Color.fromARGB(255, 240, 240, 240),
                      Color.fromARGB(255, 33, 157, 188),
                    ]),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 0.0,
                      blurRadius: 2,
                      offset: const Offset(3.0, 3.0)),
                  BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 0.0,
                      blurRadius: 2,
                      offset: const Offset(3.0, 3.0)),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 120, child: image),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class InBottomSheet extends StatelessWidget {
  final ExpansionTileController controller = ExpansionTileController();

  InBottomSheet({
    super.key,
    required this.title,
    required this.image,
    required this.onPressed,
  });
  final String title;
  final VoidCallback onPressed;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4,left: 20,right: 20,top: 3),
      child: MaterialButton(
        //highlightElevation: 100,
        elevation: 0,
        onPressed: onPressed,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
        height: MediaQuery.of(context).size.height*0.105,
        minWidth: MediaQuery.of(context).size.width*0.8,
        highlightColor: const Color.fromARGB(54, 163, 163, 163),
        splashColor: const Color.fromARGB(17, 0, 0, 0),
        color: const Color.fromARGB(255, 241, 241, 241),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              height: 80,
              child: image,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(title,
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  fontFamily: 'Asap',
                  
                ),
                ),
              ),
            ),
            Container(
              alignment: AlignmentDirectional.centerEnd,
              width: MediaQuery.of(context).size.width * 0.2,
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
                color: Color.fromARGB(255, 87, 87, 87),
              ),
            )
          ],
        ),
      ),
    );
  }
}

/**Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width,
                      color: const Color.fromARGB(255, 236, 236, 236),
                      decoration: BoxDecoration(
                        
                       ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: image1,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.30,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(title1),
                              ),
                            ),
                            Container(
                              alignment: AlignmentDirectional.centerEnd,
                              width: MediaQuery.of(context).size.width * 0.30,
                              child:
                                  const Icon(Icons.arrow_forward_ios_rounded),
                            )
                          ],
                        ),
                      ),
                    ) */