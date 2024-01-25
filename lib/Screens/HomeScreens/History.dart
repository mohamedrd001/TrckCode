import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  /*final Stream<int> _bids = (() {
    late final StreamController<int> controller;
    controller = StreamController<int>(
      onListen: () async {
        await Future<void>.delayed(const Duration(seconds: 1));
        controller.add(1);
        await Future<void>.delayed(const Duration(seconds: 1));
        await controller.close();
      },
    );
    return controller.stream;
  })();*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.09,
          toolbarOpacity: 0.5,
          title: const Text(
            'History',
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Image.asset('images/fds.png'),
            ),
          ]),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.76,
              child: Column(
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Container(
                      alignment: FractionalOffset.center,
                      height: MediaQuery.of(context).size.height * 0.73,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 236, 236, 236),
                          borderRadius: BorderRadius.circular(15)),
                      /*child: StreamBuilder<int>(
                        stream: _bids,
                        builder: (BuildContext context,
                            AsyncSnapshot<int> snapshot) {
                          List<Widget> children;
                          if (snapshot.hasError) {
                            children = <Widget>[
                              const Icon(
                                Icons.error_outline,
                                color: Colors.red,
                                size: 60,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Text('Error: ${snapshot.error}'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child:
                                    Text('Stack trace: ${snapshot.stackTrace}'),
                              ),
                            ];
                          } else {
                            switch (snapshot.connectionState) {
                              case ConnectionState.none:
                                children = const <Widget>[
                                  Icon(
                                    Icons.info,
                                    color: Colors.blue,
                                    size: 60,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 16),
                                    child: Text('Select a lot'),
                                  ),
                                ];
                              case ConnectionState.waiting:
                                children = const <Widget>[
                                  SizedBox(
                                    width: 60,
                                    height: 60,
                                    child: CircularProgressIndicator(),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 16),
                                    child: Text('Awaiting bids...'),
                                  ),
                                ];
                              case ConnectionState.active:
                                children = <Widget>[
                                  const Icon(
                                    Icons.check_circle_outline,
                                    color: Colors.green,
                                    size: 60,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 16),
                                    child: Text('\$${snapshot.data}'),
                                  ),
                                ];
                              case ConnectionState.done:
                                children = <Widget>[
                                  const Icon(
                                    Icons.info,
                                    color: Colors.blue,
                                    size: 60,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 16),
                                    child: Text('\$${snapshot.data} (closed)'),
                                  ),
                                ];
                            }
                          }

                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: children,
                          );
                        },
                      ),*/
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
