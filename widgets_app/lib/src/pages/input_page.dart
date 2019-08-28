import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = "";
  String _email = "";
  TextEditingController _textEditingController = TextEditingController();
  List<String> musicGenderList = ['Rap', 'Jazz', 'Rock', 'Bossa Nova'];
  String _selectedMusicGender = 'Rap';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input'),
      ),
      body: _createInputList(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _createInputList() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      children: <Widget>[
        _createSimpleInput(),
        Divider(),
        _createEmailInput(),
        Divider(),
        _createPasswordInput(),
        Divider(),
        _createDatePickerInput(context),
        Divider(),
        _createDropdownInput(context),
        Divider(),
        _showUserData(),

      ],
    );
  }

  Widget _createSimpleInput() {
    return TextField(
      onChanged: (value) {
        setState(() {
          _name = value;
        });
      },
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          counter: Text('${_name.length}'),
          hintText: 'Introduzca su nombre',
          labelText: 'Nombre',
          helperText: 'Aquí va el nombre',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(24.0))),
      // autofocus: true,
    );
  }

  Widget _createEmailInput() {
    return TextField(
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
      textCapitalization: TextCapitalization.sentences,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: 'Email',
          icon: Icon(Icons.alternate_email),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(24.0))),
      // autofocus: true,
    );
  }

  Widget _createPasswordInput() {
    return TextField(
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
      obscureText: true,
      decoration: InputDecoration(
          labelText: 'Password',
          icon: Icon(Icons.lock),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(24.0))),
      // autofocus: true,
    );
  }

  Widget _createDatePickerInput(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
      enableInteractiveSelection: false,
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
          labelText: 'Date',
          icon: Icon(Icons.calendar_today),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(24.0))),
      // autofocus: true,
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2018),
        lastDate: DateTime(2025),
      locale: Locale('es', 'ES')
    );

    if (picked != null) {
      setState(() {
        _textEditingController.text = picked.toString();
      });
    }

  }

  Widget _createDropdownInput(BuildContext context) {
    return DropdownButton(
      items: _createDropdownList(),
      value: _selectedMusicGender,
      onChanged: (selectedOption) {
        setState(() {
          _selectedMusicGender = selectedOption;
        });
      },
    );
  }

  List<DropdownMenuItem<String>> _createDropdownList() {
    List<DropdownMenuItem<String>> list = List();
    musicGenderList.forEach((currentGender) {
      list.add(DropdownMenuItem(
        child: Text(currentGender),
        value: currentGender,
      ));
    });
    return list;
  }

  Widget _showUserData() {
    return ListTile(
      title: Text("Nombre $_name"),
      subtitle: Text("Email $_email"),
    );
  }
}
