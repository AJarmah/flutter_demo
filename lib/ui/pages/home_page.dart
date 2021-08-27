import 'package:flutter/material.dart';
import 'package:test_task/utils/color_generator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final colorGenerator = ColorGenerator();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Test task'),
      ),
      backgroundColor: colorGenerator.stateColor,
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: InkWell(
          onTap: _changeColor,
          child: Center(
            child: Container(
              color: Colors.black.withOpacity(0.5),
              child: Text(
                'Hey there',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: colorGenerator.textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _changeColor() {
    colorGenerator.generate();
    setState(() {});
  }
}
