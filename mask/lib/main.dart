import 'package:flutter/material.dart';
import 'package:mask/ui/view/main_page.dart';
import 'package:mask/viewmodel/store_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider.value(
      value: StoreModel(),
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
