import 'dart:math';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

double sliderValue = 50.0;
int targetValue = Random().nextInt(100);
int score = 0;
int roundNumber = 0;
int currentValue = 0;

class _HomepageState extends State<Homepage> {
  void newRound() {
    setState(() {
      roundNumber += 1;
      sliderValue = 50.0;
      targetValue = Random().nextInt(100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Text(
                    "Hit the Bulls's Eye as close as possible: $targetValue",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  Text(
                    '0',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Expanded(
                    child: Slider(
                      min: 0,
                      max: 100,
                      activeColor: Colors.amber,
                      inactiveColor: Colors.black,
                      onChanged: (value) {
                        setState(
                          () {
                            sliderValue = value;
                            currentValue = sliderValue.toInt();
                          },
                        );
                      },
                      value: sliderValue,
                    ),
                  ),
                  Text(
                    '100',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return SimpleDialog(
                        title: Text("Your Estimate: $currentValue"),
                        titlePadding: EdgeInsets.all(20),
                      );
                    },
                  );
                  setState(() {
                    newRound();
                  });
                  return;
                },
                color: Colors.amber,
                child: Text(
                  "Hit me!",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      newRound();
                    },
                    icon: Icon(Icons.refresh),
                    iconSize: 36,
                    color: Colors.white,
                  ),
                  Text(
                    'Score: $score',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  Text(
                    'Round: $roundNumber',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'about');
                    },
                    icon: Icon(Icons.info),
                    iconSize: 36,
                    color: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
