import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:signis/src/pages/avatar_page.dart';
import 'package:signis/src/pages/list_page.dart';
import 'package:signis/src/pages/map_page.dart';
import 'package:signis/src/pages/resources_page.dart';

import 'avatar_page2.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  CircularBottomNavigationController _navigationController = CircularBottomNavigationController(0);
  int _page = 0;


  List<TabItem> tabItems = List.of([
    TabItem(Icons.map, "Mapa", Colors.blue, labelStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
    TabItem(Icons.warning, "Incidencias", Colors.orange, labelStyle: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
    TabItem(Icons.person, "Usuarios", Colors.green, labelStyle: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signis'),
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: CircularBottomNavigation(
        tabItems,
        controller: _navigationController,
        animationDuration: Duration(milliseconds: 500),
        selectedCallback: (int selectedPos) {
          print("clicked on $selectedPos");
          setState(() {
            _page = selectedPos;
          });
        },
      ),
      body: _switchPages(_page),
    );
  }

  Widget _switchPages(int page) {
    Widget currentPage;

    switch (page) {
      case 0:
        currentPage = MapPage();
        break;
      case 1:
        currentPage = AvatarPage();
        break;
      case 2:
        currentPage = ResourcesPage();
        break;
    }

    return currentPage;
  }
}
