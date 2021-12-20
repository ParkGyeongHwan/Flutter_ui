import 'package:flutter/material.dart';

class main_Screen extends StatelessWidget {
  const main_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text('이미지 검색'),
          ),
          body: Column(
            children:  [
              const TextField(),
              ElevatedButton(
                onPressed: () {},
                child: const Text('검색 하기'),
              ),
              
              ]
          ),
        
        );
  }
}
