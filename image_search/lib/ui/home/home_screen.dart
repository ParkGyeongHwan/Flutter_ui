import 'package:flutter/material.dart';
import 'package:image_search/data/fake_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('이미지 검색',style: TextStyle(color: Colors.black),)),
            backgroundColor: (Colors.white),
          ),
          body: Column(

            children: [
              const SizedBox(
                height: 50,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '검색어를 입력하세요',
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                height: 500,
                child: GridView.count(
                  crossAxisCount: 2,
                  children: fakePhotos.map((e) => Image.network(e.previewURL)).
                  toList(),
                ),
              ),
            ],
          ),
        );
  }
}
