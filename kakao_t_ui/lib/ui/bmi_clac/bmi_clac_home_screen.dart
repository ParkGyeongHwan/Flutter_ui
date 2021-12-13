import 'package:flutter/material.dart';

import 'bmi_clac_result_screen.dart';

class BmiCalcHomeScreen extends StatefulWidget {
  const BmiCalcHomeScreen({Key key}) : super(key: key);

  @override
  State<BmiCalcHomeScreen> createState() => _BmiCalcHomeScreenState();
}

class _BmiCalcHomeScreenState extends State<BmiCalcHomeScreen> {
  final _formkey = GlobalKey<FormState>();

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
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    labelText: "키 (cm)",
                    hintText: '키를 입력해 주세요'
                ),
            keyboardType: TextInputType.number,
            controller: myController,
                validator: (value){
                  if(value.trim().isEmpty) {
                    return '몸무게를입력해주세요';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border:OutlineInputBorder(),
                    labelText: "몸무게(kg)",
                    hintText: '몸무게를 입력해 주세요'
                ),
                keyboardType: TextInputType.number,
                controller: myController2,
                validator: (value){
                  if(value.trim().isEmpty) {
                    return '몸무게를입력해주세요';
                  }
                  return null;
                },
              ),
              ButtonBar(
                children: [
                  ElevatedButton(onPressed: () {
                    if (_formkey.currentState.validate()) {
                      var biman = "";
                      var icon;
                      var height = double.parse(myController.text);
                      var kg = double.parse(myController2.text);
                      var result = (kg / (height / 100 * height / 100));
                      if (result < 18.5) {
                        biman = "저체중";
                        icon = Icon(Icons.sick_outlined,
                          size: 60,);
                      } else if (18.5 < result && result < 22.9) {
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
                          (builder: (context) =>
                            BmiCalcResultScreen(biman: biman, icon: icon)),
                      );
                    }
                  },

                    child: Text('계산'),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}