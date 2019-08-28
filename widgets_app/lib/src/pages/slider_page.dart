import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 0;
  bool _checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[
            _createSlider(),
            _createCheckBox(),
            _createSwitch(),
            _showImage(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.green,
      divisions: 10,
      label: _sliderValue.toString(),
      min: 0,
      max: 300,
      value: _sliderValue,
      onChanged: (_checkBoxValue)
          ? null
          : (value) {
              setState(() {
                _sliderValue = value;
              });
            },
    );
  }

  Widget _showImage() {
    return Image(
      image: NetworkImage(
          'https://upload.wikimedia.org/wikipedia/commons/d/d4/N.Tesla.JPG'),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }

  Widget _createCheckBox() {
    return CheckboxListTile(
      title: Text('Bloquear slider'),
      onChanged: (value) {
        setState(() {
          _checkBoxValue = value;
        });
      },
      value: _checkBoxValue,
    );
  }

  Widget _createSwitch() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      onChanged: (value) {
        setState(() {
          _checkBoxValue = value;
        });
      },
      value: _checkBoxValue,
    );
  }
}
