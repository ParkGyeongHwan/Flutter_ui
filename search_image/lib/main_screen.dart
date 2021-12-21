import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:search_image/model/photo.dart';

class main_Screen extends StatefulWidget {
  const main_Screen({Key? key}) : super(key: key);

  @override
  State<main_Screen> createState() => _main_ScreenState();
}

class _main_ScreenState extends State<main_Screen> {
  List<Photo> photos = [];
  String query = 'iphone';
  TextEditingController _textEditingContoller = TextEditingController();

  Future<void> fetchPhotos() async {
    http.Response response = await http.get(Uri.parse(
        'https://pixabay.com/api/?key=24806094-52040c2d00bf4b3efceec4a99&q=$query&image_type=photo&pretty=true'));

    List jsonList = jsonDecode(response.body)['hits'];
    photos = jsonList.map((e) => Photo.fromJson(e)).toList();
    setState(() {

    });
  }

  @override
  void initState() {
    fetchPhotos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('이미지 검색'),
      ),
      body: Column(children: [
        TextField(
          controller: _textEditingContoller,
        ),
        ElevatedButton(
          onPressed: () {
            query = _textEditingContoller.text;
            fetchPhotos();
          },
          child: const Text('검색 하기'),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: photos.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.network(photos[index].previewURL),
                title: Text(photos[index].tags),
              );
            },
          ),
        )
      ]),
    );
  }
}
