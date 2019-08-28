import 'dart:async';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<int> _numberList = [];
  int _lastItem = 0;
  ScrollController _scrollController = ScrollController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _addImagesToList();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
      ),
      body: Stack(
        children: <Widget>[
          _createList(),
          _createLoading(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _createList() {
    return RefreshIndicator(
      onRefresh: _getFirstPage,
      child: ListView.builder(
          controller: _scrollController,
          itemCount: _numberList.length,
          itemBuilder: (BuildContext context, int index) {
            final _imagenId = _numberList[index];

            return FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://picsum.photos/500/300/?image=$_imagenId'),
            );
          }),
    );
  }

  Future<Null> _getFirstPage() async {
    final duration = Duration(seconds: 2);
    Timer(duration, () {
      _numberList.clear();
      _lastItem++;
      _addImagesToList();
    });

    return Future.delayed(duration);
  }

  void _addImagesToList() {
    for (int i = 0; i < 10; i++) {
      _lastItem++;
      _numberList.add(_lastItem);
    }

    setState(() {});
  }

  Future fetchData() async {
    _isLoading = true;
    setState(() {});

    final duration = Duration(seconds: 2);

    Timer(duration, requestHttp);
  }

  void requestHttp() {
    _isLoading = false;
    _addImagesToList();
    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      duration: Duration(milliseconds: 250),
      curve: Curves.fastOutSlowIn,
    );
  }

  Widget _createLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[CircularProgressIndicator()],
          ),
          SizedBox(
            height: 50,
          )
        ],
      );
    } else {
      return Container();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}
