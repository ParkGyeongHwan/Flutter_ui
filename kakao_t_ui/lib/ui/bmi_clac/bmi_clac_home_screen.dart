import 'package:flutter/material.dart';

import 'bmi_clac_result_screen.dart';

class BmiCalcHomeScreen extends StatefulWidget {
  const BmiCalcHomeScreen({Key key}) : super(key: key);

  @override
  State<BmiCalcHomeScreen> createState() => _BmiCalcHomeScreenState();
}

class _BmiCalcHomeScreenState extends State<BmiCalcHomeScreen> {


  final myController = TextEditingController();
  final myController2 = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bmi계산기'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: '키를 입력해 주세요'
              ),
          controller: myController,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: '몸무게를 입력해 주세요'
              ),
              controller: myController2,
            ),
            ElevatedButton(onPressed: () {
              var biman = "";
              var icon;
              var height = double.parse(myController.text);
              var kg = double.parse(myController2.text);
              var result = (kg / (height/100 * height/100));
              if (result < 18.5) {
                biman = "저체중";
                icon = Icon(Icons.sick_outlined,
                size: 60,);
              } else if (18.5 < result  && result < 22.9 ) {
                biman = "정상";
                icon = Icon(Icons.sentiment_satisfied_alt_outlined,
                size: 60,);
              } else {
                biman = "비만";
                icon = Icon(Icons.mood_bad_outlined,
                size: 60,);
              }
              Navigator.push(
                context,
                MaterialPageRoute
                  (builder: (context) => BmiCalcResultScreen(biman: biman,icon: icon)),
              );
            },
              child: Text('계산'),),
          ],
        ),
      ),
    );
  }
}