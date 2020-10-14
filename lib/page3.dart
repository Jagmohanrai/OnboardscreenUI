import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            'assets/photo3.png',
            height: MediaQuery.of(context).size.height * 0.55,
          ),
          Text(
            'Quick delivery at\n your Doorstep',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.bold, height: 1.2),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              'Home delivery and online reservation\n system for restaurants and cafe',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                height: 1.3,
                color: Colors.black45,
              ),
            ),
          )
        ],
      ),
    );
  }
}
