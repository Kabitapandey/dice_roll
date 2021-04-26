import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DiceRoll());
}

class DiceRoll extends StatelessWidget {
  @override
  Widget build(BuildContext build) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice Roll",
      home: DiceHome(),
    );
  }
}

class DiceHome extends StatefulWidget {
  @override
  _DiceHomeState createState() => _DiceHomeState();
}

class _DiceHomeState extends State<DiceHome> {
  List img = [
    "assets/1.png",
    "assets/2.png",
    "assets/3.png",
    "assets/4.png",
    "assets/5.png",
    "assets/6.png"
  ];
  var image = 'assets/1.png';

  var no;

  void rollDice() {
    int i;
    Random random = Random();

    no = random.nextInt(img.length);

    setState(() {
      image = img[no];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dice Roller"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(height: 20.0),
            Image.asset(
              "$image",
              height: 300.0,
              width: 250.0,
            ),
            SizedBox(
              height: 15.0,
            ),
            Center(
              child: RaisedButton(
                onPressed: rollDice,
                color: Colors.blue,
                child: Text(
                  "Roll",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
              ),
            )
          ],
        ));
  }
}
