import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Emoji fun"),
      ),
      body: emoji(),
    ),
  ));
}

class emoji extends StatefulWidget {
  @override
  _emojiState createState() => _emojiState();
}

class _emojiState extends State<emoji> {
  var e_number = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200,
                child: FlatButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Image.asset('images/$e_number.png'),
                  onPressed: () {
                    setState(
                      () {
                        e_number = Random().nextInt(6);
                      },
                    );
                  },
                ),
              ),
              Text(
                "Press to randomize!",
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}
