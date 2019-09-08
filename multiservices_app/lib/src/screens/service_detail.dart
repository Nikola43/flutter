
import 'package:flutter/material.dart';
import 'package:multiservices_app/src/models/service.dart';
class ServiceDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Images image = ModalRoute.of(context).settings.arguments;



    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _createAppBar(image),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: 10.0),

            ]),
          ),
        ],
      ),
    );
  }

  Widget _createAppBar(Images image) {
    return SliverAppBar(
      elevation: 2.0,
      backgroundColor: Colors.indigo,
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          'dfsdsdsd',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        background: FadeInImage(
          image: NetworkImage(image.url),
          placeholder: AssetImage('assets/img/loading.gif'),
          fit: BoxFit.cover,
          fadeInDuration: Duration(milliseconds: 150),
        ),
      ),
    );
  }
}
