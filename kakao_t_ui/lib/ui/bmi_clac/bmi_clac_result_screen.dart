import 'package:flutter/material.dart';



class BmiCalcResultScreen extends StatelessWidget {
  final String biman;
  final Icon icon;


  const BmiCalcResultScreen({Key key, this.biman ,this.icon}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('결과'),
          ),
          body: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    biman,
                    style: TextStyle(
                        fontSize: 60
                    ),
                  ),
                    icon
                ],
              ),
            ),
          ),
        );
  }
}
