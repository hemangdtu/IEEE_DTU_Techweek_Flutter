import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Bull's Eye",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Your goal is to place the slider as close as possible to the target value. The closer you are, the more points you score.",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(child: Container()),
                  Expanded(
                    child: Center(
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Close",
                          style: TextStyle(color: Colors.black, fontSize: 24),
                        ),
                        color: Colors.amber,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'about_author');
                        },
                        child: Text(
                          "About Author",
                          style: TextStyle(color: Colors.black, fontSize: 24),
                        ),
                        color: Colors.amber,
                      ),
                    ),
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
