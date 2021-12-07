import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kakao_t_ui/ui/counter/counter_screen.dart';
import 'package:kakao_t_ui/ui/kakao_t/kakao_t_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _screens = [
    KakaoTScreen(),
    CounterScreen(),
  ];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

          body: _screens[_index],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _index,
            onTap: (int val){
              setState(() {
                _index = val;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon : Icon(Icons.home),
                label: 'KakaoT'
               ),
              BottomNavigationBarItem(
                  icon : Icon(Icons.watch),
                label: '카운터'
              ),
            ],
          ),
        );
  }
}

