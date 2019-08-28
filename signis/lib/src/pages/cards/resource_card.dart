import 'package:flutter/material.dart';
import 'package:signis/src/pages/dialogs/resource_dialog.dart';
Widget resourceCard(BuildContext context) {
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0)
    ),
    child: Column(
      children: <Widget>[
        ListTile(
          title: Text('Usuario 1'),
          subtitle: Text(
              'Lorem fistrum no puedor qué dise usteer. A wan qué dise usteer diodenoo a peich.'),
          leading: CircleAvatar(
            child: Text('PS'),
          ),
          onTap: () {
            showResourceDialog(context);
          },
        ),
      ],
    ),
  );
}

