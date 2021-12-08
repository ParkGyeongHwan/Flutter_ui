import 'package:flutter/material.dart';
import 'package:kakao_t_ui/model/menu.dart';

class DetailScreen extends StatelessWidget {
  final Menu menu;

  const DetailScreen({Key key, this.menu}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text(menu.title),
          ),
          body: Center(
              child: SizedBox(
                height: 400,
                  width: 400,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);

                    },
                      child: Image.network(menu.imageUrl,fit: BoxFit.fill,)))),
        );
  }
}
