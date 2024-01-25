import 'package:flutter/material.dart';

class ExpansionTileStart extends StatelessWidget {
  const ExpansionTileStart({
    super.key,
    required this.title,
    required this.shape,
    required this.shapeC,
    required this.image,
    required this.childrenn,
    required this.controllerE,
  });
  final String title;
  final RoundedRectangleBorder shape;
  final RoundedRectangleBorder shapeC;
  final Image image;
  final Widget childrenn;
  final ExpansionTileController controllerE;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: ExpansionTile(
        controller: controllerE,
        leading: SizedBox(
          height: 35,
          child: image,
        ),
        title: Text(title),
        shape: shape,
        collapsedShape: shapeC,
        collapsedBackgroundColor: const Color.fromARGB(255, 241, 241, 241),
        backgroundColor: const Color.fromARGB(255, 223, 223, 223),
        children: [
          childrenn,
        ],
      ),
    );
  }
}

class SousExpansionTileStart extends StatelessWidget {
  final ExpansionTileController controller = ExpansionTileController();

  SousExpansionTileStart({
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
    return MaterialButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.15,
            // height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 12),
              child: SizedBox(
                height: 30,
                child: image,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            alignment: Alignment.centerLeft,
            child: Text(title),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            width: MediaQuery.of(context).size.width * 0.15,
            child: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 20,
              color: Color.fromARGB(255, 87, 87, 87),
            ),
          )
        ],
      ),
    );
  }
}

class OutExpansionTileStart extends StatelessWidget {
  final ExpansionTileController controller = ExpansionTileController();

  OutExpansionTileStart({
    super.key,
    required this.title,
    required this.image,
    required this.onPressed,
    required this.shape,
  });
  final String title;
  final VoidCallback onPressed;
  final Image image;
  final RoundedRectangleBorder shape;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: MaterialButton(
        elevation: 0,
        onPressed: onPressed,
        shape: shape,
        height: 55,
        highlightColor: const Color.fromARGB(54, 163, 163, 163),
        splashColor: const Color.fromARGB(17, 0, 0, 0),
        color: const Color.fromARGB(255, 241, 241, 241),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              width: MediaQuery.of(context).size.width * 0.1,
              height: 35,
              child: image,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.53,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(title),
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
