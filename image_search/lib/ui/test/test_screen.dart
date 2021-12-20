import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_search/model/album.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);




  // 오래 걸리는 처리
  Future<Album> fetchAlbum() async {
    // await [Future가 리턴되는 코드]
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

    if (response.statusCode == 200) {
      return Album.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }

  // 스테이트풀 위젯이 생성될 때, 맨 처음 한번만 수행
  @override

    // Future 를 리턴하는 메서드를 수행하고 나서 실행되는 메서드를 then 을 사용하여 구현한다.

    // fetchAlbum().then((album) {
    //   setState(() {
    //     _album = album;
    //   });
    // });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('테스트 스크린'),
      ),
       body: FutureBuilder<Album>(
         future: fetchAlbum(),
         builder: (context, snapshot) {
           if(snapshot.hasError) {
             return const Center(child: Text('네트워크 에러'));
           }
           if (snapshot.connectionState == ConnectionState.waiting) {
             return const Center(child:  CircularProgressIndicator());
           }
           if (snapshot.hasData) {
             return const  Center(child: Text('데이터가 없습니다'));
           }
           final Album album = snapshot.data!;

           return _buildBody(album);
         },
       )
      // _album == null
      //     ? const CircularProgressIndicator()
      //     : Text(
      //   '${_album!.id} : ${_album.toString()}' ,
      //
      // ),
    );
  }
  Widget _buildBody(Album album) {
    return Text(
        '${album.id} : ${album.toString()}'
    );
  }
}
