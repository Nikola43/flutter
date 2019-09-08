import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AdvancedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));

    return Scaffold(
        body: Stack(
          children: <Widget>[
            _drawBackground(),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[_drawTitles(), _drawRoundedButtons()],
              ),
            )
          ],
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }

  Widget _drawBackground() {
    final _gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ])),
    );

    final _pinkBox = Transform.rotate(
        angle: -pi / 4.0,
        child: Container(
            height: 360.0,
            width: 360.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                gradient: LinearGradient(
                    begin: FractionalOffset(0.0, 0.6),
                    end: FractionalOffset(0.0, 1.0),
                    colors: [
                      Color.fromRGBO(236, 98, 188, 1.0),
                      Color.fromRGBO(241, 142, 172, 1.0)
                    ]))));

    return Stack(
      children: <Widget>[
        _gradient,
        Positioned(
          top: -100,
          child: _pinkBox,
        )
      ],
    );
  }

  Widget _drawTitles() {
    final _titleStyle = TextStyle(
        color: Colors.white,
        fontSize: 50.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Ubuntu');

    final _subTitleStyle = TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Ubuntu-Light');

    return SafeArea(
      child: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Advanced UI', style: _titleStyle),
              SizedBox(height: 10.0),
              Text(
                'Trying to create beautiful UI',
                style: _subTitleStyle,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context)
              .textTheme
              .copyWith(caption: TextStyle(color: Colors.grey))),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today, size: 30), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm, size: 30), title: Container())
        ],
      ),
    );
  }

  Widget _drawRoundedButtons() {
    return Table(
      children: [
        TableRow(children: [
          _drawRoundedButton(Colors.redAccent, Icons.calendar_today,
              Colors.white, 'Calendario', Colors.redAccent),
          _drawRoundedButton(Colors.greenAccent, Icons.account_circle,
              Colors.white, 'Perfil', Colors.greenAccent),
        ]),
        TableRow(children: [
          _drawRoundedButton(Colors.blueAccent, Icons.drafts,
              Colors.white, 'Mensajes', Colors.blueAccent),
          _drawRoundedButton(Colors.deepPurpleAccent, Icons.add_alert,
              Colors.white, 'Incidencias', Colors.deepPurpleAccent),
        ]),
        TableRow(children: [
          _drawRoundedButton(Colors.orangeAccent, Icons.backup,
              Colors.white, 'Backups', Colors.orangeAccent),
          _drawRoundedButton(Colors.purpleAccent, Icons.airplay,
              Colors.white, 'Screens', Colors.purpleAccent),
        ]),
        TableRow(children: [
          _drawRoundedButton(Colors.cyanAccent, Icons.airport_shuttle,
              Colors.white, 'Transportes', Colors.cyanAccent),
          _drawRoundedButton(Colors.pinkAccent, Icons.add_a_photo,
              Colors.white, 'Fotos', Colors.pinkAccent),
        ]),
      ],
    );
  }

  Widget _drawRoundedButton(Color backgroundColor, IconData icon,
      Color iconColor, String text, Color textColor) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(24),
      child: Container(
        height: 180.0,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
            color: Color.fromRGBO(62, 66, 107, 0.7)),
        child: BackdropFilter(
            filter: ui.ImageFilter.blur(sigmaY: 1.0, sigmaX: 1.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(height: 10.0),
                  CircleAvatar(
                    backgroundColor: backgroundColor,
                    radius: 40,
                    child: Icon(icon, color: iconColor, size: 30.0),
                  ),
                  Text(text, style: TextStyle(color: textColor, fontSize: 20.0)),
                  SizedBox(height: 10.0)
                ],
              ),
            )),
      ),
    );
  }
}
