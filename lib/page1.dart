import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            'assets/photo1.png',
            height: MediaQuery.of(context).size.height * 0.55,
          ),
          Text(
            'Choose from our\n best menu',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.bold, height: 1.2),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              'Pick your desired food from the menu\n There are more than 26 items',
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
