import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mask/model/store.dart';

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
  final stores = <Store>[];
  var isLoading = true;

  Future fetch() async {
    setState(() {
      isLoading = true;
    });
    var url =
        'https://gist.githubusercontent.com/junsuk5/bb7485d5f70974deee920b8f0cd1e2f0/raw/063f64d9b343120c2cb01a6555cf9b38761b1d94/sample.json';
    var response = await http.get(Uri.parse(url));

    final jsonresult = jsonDecode(utf8.decode(response.bodyBytes));

    final jsonStores = jsonresult['stores'];
    setState(() {
      stores.clear();
      jsonStores.forEach((e) {
        stores.add(Store.fromJson(e));
      });

      isLoading = false;
    });
    // initState();
    // print('완료');
  }

  @override
  void initState() {
    super.initState();
    fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('마스크 재고 있는 곳 : ${stores.length}곳'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: fetch,
          )
        ],
      ),
      body: isLoading
          ? loadingWidget()
          : ListView(
              children: stores.map((e) {
                return ListTile(
                  title: Text(e.name),
                  subtitle: Text(e.addr),
                  trailing: Text(e.remainStat),
                );
              }).toList(),
            ),
    );
  }

  Widget loadingWidget() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('정보를 가져오는 중'),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
