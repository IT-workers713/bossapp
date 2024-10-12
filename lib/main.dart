import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: AppBool(),
      ),
    );

class AppBool extends StatefulWidget {
  const AppBool({super.key});

  @override
  State<AppBool> createState() => _AppBoolState();
}

class _AppBoolState extends State<AppBool> {
  int clickItem = 1;

  void getclicks() {
    setState(() {
      clickItem = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Posez moi une question ",
          selectionColor: Colors.white,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                getclicks();
              },
              child: Image.asset("images/ball$clickItem.png"),
            ),
          ],
        ),
      ),
    );
  }
}
