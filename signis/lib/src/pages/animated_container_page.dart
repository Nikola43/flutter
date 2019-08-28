import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50;
  Color _containerColor = Colors.cyan;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
          child: AnimatedContainer(
            curve: Curves.easeInOutCirc,
        duration: Duration(milliseconds: 500),
        width: _width,
        height: _height,
        decoration: BoxDecoration(
            borderRadius: _borderRadiusGeometry, color: _containerColor),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.replay),
        onPressed: () {
          changeContainerShape();
        },
      ),
    );
  }

  void changeContainerShape() {
    final random = Random();

    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _containerColor = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _borderRadiusGeometry =
          BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
