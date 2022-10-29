import 'package:flutter/material.dart';
import 'package:online_radio_flutter/views/list_screen.dart';

void main() {
  runApp(const OnlineRadioPH());
}

class OnlineRadioPH extends StatelessWidget {
  const OnlineRadioPH({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListPage(),
    );
  }
}
