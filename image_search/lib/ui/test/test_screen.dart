import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_search/model/album.dart';


class Test_Screen extends StatefulWidget {
  const Test_Screen({Key? key}) : super(key: key);

  @override
  State<Test_Screen> createState() => _Test_ScreenState();
}

class _Test_ScreenState extends State<Test_Screen> {

  Album? _album;

  Future<Album> fetchAlbum() async {


    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Album.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
  @override
  void initState() {
    super.initState();

    fetchAlbum().then((album) {
      setState(() {
        _album = album;
      });;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text('Network Sample'),
          ),
          body: Container(
            child: Text(_album.toString()),
          ),
        );
  }
}
