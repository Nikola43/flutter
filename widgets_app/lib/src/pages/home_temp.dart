import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class HomeTemp extends StatelessWidget {
  final elements = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('appbarTitle'),
        ),
        body: ListView(children: _loadMapList(context)));
  }

  List<Widget> _loadList() {
    List<Widget> list = new List<Widget>();
    for (String currentElement in elements) {
      list..add(ListTile(title: Text(currentElement)))..add(Divider());
    }

    return list;
  }

  List<Widget> _loadMapList(context) {
    return elements.map((currentItem) {
      return Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text(currentItem),
            subtitle: Text("Test"),
            onTap: () {
              Toast.show("Toast plugin app", context,
                  duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
            },
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
