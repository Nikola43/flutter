import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServicesPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  final subtitleStyle = TextStyle(fontSize: 15.0, color: Colors.grey);
  double screenWidthSize = 0.0;
  double screenHeightSize = 0.0;

  @override
  Widget build(BuildContext context) {
    screenWidthSize = MediaQuery.of(context).size.width;
    screenHeightSize = MediaQuery.of(context).size.height;

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _createAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: 10.0),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
              Text('dfdfdfdfdfdfdfdfdfdf'),
            ]),
          ),
        ],
      ),
    );
  }
  }

Widget _createAppBar() {
  return SliverAppBar(
    elevation: 2.0,
    backgroundColor: Colors.blue,
    expandedHeight: 300.0,
    floating: false,
    pinned: true,
    flexibleSpace: FlexibleSpaceBar(
      centerTitle: true,
      title: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(5)
        ),
        child: Text(
          'Soldadores',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
      ),
      background: FadeInImage(
        image: NetworkImage('https://formacionceif.es/wp-content/uploads/2017/08/Soldadura-MIG-MAG.jpg'),
        placeholder: AssetImage('assets/img/loading.gif'),
        fit: BoxFit.cover,
        fadeInDuration: Duration(milliseconds: 150),
      ),
    ),
  );
}
