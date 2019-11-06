import 'package:dantes_gates_minimal_version/src/providers/email_provider.dart';
import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate {
  String _selectedFilm = '';
  final emailProvider = EmailProvider();

  @override
  String get searchFieldLabel => 'Buscar';

  @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme;
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Container(
        height: 100.0,
        color: Colors.pinkAccent,
        child: Text(_selectedFilm),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return Container();
    } else {
      return FutureBuilder(
          future: emailProvider.getNames(query),
          initialData: [],
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              final films = snapshot.data;
              return ListView(children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Text(
                      'U',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  title: Text("Usuario"),
                  subtitle: Text("info"),
                  onTap: () {
                    close(context, null);
                  },
                ),
              ]);
            } else {
              return CircularProgressIndicator();
            }
          });
    }
  }
}
