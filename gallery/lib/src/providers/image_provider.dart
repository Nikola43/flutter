class ImageProvider {
  Future<List<String>> getNames() async {
    await Future.delayed(Duration(seconds: 1));
    List<String> list = [];
    for (int i = 0; i < 50; i++) {
      list.add('https://picsum.photos/id/$i/1000/1000');
    }
    return list;
  }
}
