import 'package:flutter/material.dart';

class MediumPage extends StatefulWidget {
  @override
  _MediumPageState createState() => _MediumPageState();
}

class _MediumPageState extends State<MediumPage>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  double _iconOpacity = 0;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    animation = Tween<double>(begin: 0, end: 1).animate(controller)
      ..addStatusListener((state) {
        print('$state');
        if (state == AnimationStatus.completed) {
          controller.reverse();
        } else if (state == AnimationStatus.dismissed) {
          controller.forward();
        }
        setState(() {
          _iconOpacity = animation.value;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[_firstPage(), _secondPage()],
      ),
    );
  }

  Widget _firstPage() {
    return Stack(
      children: <Widget>[
        _drawBackgroundColor(),
        _drawBackgroundImage(),
        _text()
      ],
    );
  }

  Widget _drawBackgroundColor() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(80, 194, 221, 1.0),
    );
  }

  Widget _drawBackgroundImage() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Image(
          image: AssetImage('assets/img/scroll-1.png'), fit: BoxFit.cover),
    );
  }

  Widget _text() {
    final textStyle = TextStyle(
        fontSize: 70.0, fontWeight: FontWeight.bold, color: Colors.white);

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 100.0),
          Text('11º', style: textStyle),
          Text('Lunes', style: textStyle),
          Expanded(
            child: Container(),
          ),
          Opacity(
            opacity: 1,
            child: Icon(Icons.arrow_drop_down, color: Colors.white, size: 40.0),
          )
        ],
      ),
    );
  }

  Widget _secondPage() {
    return Stack(
      children: <Widget>[
        _drawBackgroundColor(),
        Center(
          child: RaisedButton(
            color: Colors.blue,
            shape: StadiumBorder(),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Text('Pulsame', style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
