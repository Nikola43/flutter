import 'package:flutter/material.dart';

class ImageProvider {
  List<String> getImageUrlList() {
    List<String> list = [];
    for (int i = 0; i < 20; i++) {
      list.add('https://picsum.photos/id/$i/300');
    }
    return list;
  }
}
