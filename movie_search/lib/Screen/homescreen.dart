import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movie_search/data/movie_api.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  final TextEditingController _textEditingController = TextEditingController();
  List<Results> Movies = [];

  Future<Movie> fetchMovie() async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

    if (response.statusCode == 200) {
      return Movie.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }

  late Future<Movie> futureMovie;

  @override
  void initState() {
    super.initState();
    futureMovie = fetchMovie();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('영화 찾기'),
        ),
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                icon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    String search = _textEditingController.text;
                  },
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal)),
                hintText: '영화를 검색하세요',
              ),
              controller: _textEditingController,
            ),
            Expanded(
              child: FutureBuilder<Movie>(
                future: futureMovie,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, //1 개의 행에 보여줄 item 개수
                        childAspectRatio: 1 / 2, //item 의 가로 1, 세로 2 의 비율
                      ),
                      itemCount: snapshot.data!.results.length,
                      itemBuilder: (context, index) {
                        String poster =
                            snapshot.data!.results[index].posterPath;
                        return Column(
                          children: [
                            Image.network(
                                'https://image.tmdb.org/t/p/w500$poster'),
                            Text(snapshot.data!.results[index].title),
                          ],
                        );
                      },
                    );

                },
              ),
            ),
          ],
        ));
  }
}
