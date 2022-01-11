import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

import 'model/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Data> _data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.restart_alt_outlined),
          )
        ],
        title: const Text('요소수'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              fetch();
            },
            child: const Text('가져오기'),
          ),
          Expanded(
            child: ListView(
              children: _data.map((e) {
                return ListTile(
                  title: Text(e.name),
                  subtitle: Text(e.addr),
                  trailing: Text(e.inventory),
                  onTap: () {
                    launch('tel:+010 2276 0570');
                  },
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }

  Future<void> fetch() async {
    var url = Uri.parse(
        'https://api.odcloud.kr/api/uws/v1/inventory?page=1&perPage=10&serviceKey=data-portal-test-key');
    var response = await http.get(url);

    final jsonResult = jsonDecode(response.body);
    final jsonData = jsonResult['data']; // [{}, {}, {}, ..., {}]

    setState(() {
      _data.clear();
      jsonData.forEach((e) {
        _data.add(Data.fromJson(e));
      });
    });

    // print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');
  }
}
