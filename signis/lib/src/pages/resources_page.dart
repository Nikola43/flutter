import 'package:flutter/material.dart';
import 'cards/resource_card.dart';

class ResourcesPage extends StatefulWidget {
  final pageName = 'resources';
  @override
  _ResourcesPageState createState() => _ResourcesPageState();
}

class _ResourcesPageState extends State<ResourcesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _loadResourcesCards(),
    );
  }

  ListView _loadResourcesCards() {
    return ListView(
      children: <Widget>[
        resourceCard(context),
        resourceCard(context),
        resourceCard(context),
        resourceCard(context),
        resourceCard(context),
        resourceCard(context),
        resourceCard(context),
        resourceCard(context),
        resourceCard(context),
        resourceCard(context),
        resourceCard(context),
        resourceCard(context),
        resourceCard(context),
        resourceCard(context),
      ],
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
    );
  }
}

