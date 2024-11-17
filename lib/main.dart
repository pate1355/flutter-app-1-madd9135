import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basic Flutter App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'HindSiliguri',
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images and Assets'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Animal Images',
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Doto",
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/image${index + 1}.jpg',
                                  fit: BoxFit.cover,
                                  width: 200,
                                ),
                              ],
                            ));
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const ListTile(
                    title: Text('HindSiliguri-Bold',
                        style: TextStyle(
                            fontFamily: "HindSiliguri",
                            fontWeight: FontWeight.bold,
                            fontSize: 24)),
                    leading: Icon(Icons.crisis_alert_rounded),
                  ),
                  const ListTile(
                    title: Text('HindSiliguri-SemiBold',
                        style: TextStyle(
                          fontFamily: "HindSiliguri",
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        )),
                    trailing: Icon(Icons.check_circle_outline_outlined),
                  ),
                  const ListTile(
                    title: Text('HindSiliguri-Medium',
                        style: TextStyle(
                          fontFamily: "HindSiliguri",
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                        )),
                    leading: Icon(Icons.storm_rounded),
                  ),
                  const ListTile(
                    title: Text('HindSiliguri-Regular',
                        style: TextStyle(
                          fontFamily: "HindSiliguri",
                          fontWeight: FontWeight.normal,
                          fontSize: 24,
                        )),
                    trailing: Icon(Icons.stream_rounded),
                  ),
                  const ListTile(
                    title: Text('HindSiliguri-Light',
                        style: TextStyle(
                          fontFamily: "HindSiliguri",
                          fontWeight: FontWeight.w300,
                          fontSize: 24,
                        )),
                    leading: Icon(Icons.sports_volleyball_outlined),
                  ),
                  const ListTile(
                    title: Text('Default HindSiliguri',
                        style: TextStyle(
                          fontSize: 24,
                        )),
                    trailing: Icon(Icons.ac_unit_rounded),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                Image.network(
                                  'https://picsum.photos/id/${index + Random().nextInt(100)}/800/600',
                                  fit: BoxFit.cover,
                                  width: 200,
                                ),
                              ],
                            ));
                      },
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
