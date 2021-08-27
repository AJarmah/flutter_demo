import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('test task'),
        ),
        body: Stack(children: [
          Container(
            color: Colors.white.withOpacity(0.0),
            child: Text(
              'Hey there',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.center,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              color: Colors.white.withOpacity(0.0),
            ),
          ),
        ]),
      ),
    ),
  );
}
