import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model/subway.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final subways = <Subway>[];
  final myController = TextEditingController();
  Future fetch() async {
    var url =
        'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5/${myController.text}';
    var response = await http.get(Uri.parse(url));

    final jsonResult = jsonDecode(utf8.decode(response.bodyBytes));

    final jsonSubway = jsonResult['realtimeArrivalList'];

    subways.clear();
    jsonSubway.forEach((e) {
      Subway subway = Subway.fromJson(e);
      subways.add(subway);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('지하철 정보'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text('역 검색'),
              SizedBox(
                width: 150,
                height: 80,
                child: TextField(
                  controller: myController,
                  decoration: InputDecoration(
                    labelText: '역 이름',
                  ),
                ),
              ),
              FloatingActionButton(
                child: Icon(Icons.search_rounded),
                onPressed: () async {
                  await fetch();
                  setState(() {});
                },
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              itemCount: subways.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
                childAspectRatio: 1 / 0.7, //item 의 가로 1, 세로 2 의 비율
              ),
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Column(
                    children: [
                      Text('도착열차:${subways[index].arvlMsg2}'),
                      Text('${subways[index].trainLineNm}'),
                      Text('종착역:${subways[index].bstatnNm}'),
                    ],
                  ),
                );
              }, //item 의 반목문 항목 형성
            ),
          )
        ],
      ),
    );
  }
}
