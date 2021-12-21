import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'model/photo.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String query = "apple";
  List<Hits> photos = [];

  final TextEditingController _textEditingController = TextEditingController();

  Future<Photo> fetchPhotos() async {
    final response = await http.get(Uri.parse(
        'https://pixabay.com/api/?key=24806094-52040c2d00bf4b3efceec4a99&q=$query&image_type=photo&pretty=true'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Photo.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  Future<void> getData() async {
    final photo = await fetchPhotos();
    setState(() {
      photos = photo.hits;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('이미지 검색'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal)),
              hintText: '이미지를 검색하세요',
            ),
            controller: _textEditingController,
          ),
          ElevatedButton(
              onPressed: () async {
                query = _textEditingController.text;
                getData();
              },
              child: const Text('검색')),
          Expanded(
            child: ListView.builder(
              itemCount: photos.length,
              itemBuilder: (context, index) => Row(
                children: [
                  Image.network(photos[index].previewURL),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(photos[index].tags),
                  ),
                  const SizedBox(
                    height: 110,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
