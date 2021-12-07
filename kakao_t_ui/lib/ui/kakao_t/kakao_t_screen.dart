import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kakao_t_ui/data/fake_data.dart';
import 'package:kakao_t_ui/ui/kakao_t/conponents/ad_view.dart';


import 'conponents/menu_widget.dart';

class KakaoTScreen extends StatelessWidget {
  const KakaoTScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '카카오 T',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: _buildbody(),
    );
  }

  Widget _buildbody() {
    final PageController controller = PageController(initialPage: 0);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          _buildMenu2(),
          _buildAds(controller),
          _buildNotice()
        ],
      ),
    );
  }
  Widget _buildMenu2() {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: 2 / 3,
      crossAxisCount: 4,
      children: fakeMenus.map((e) => MenuWidget(menu : e)).toList(),
    );
  }



  Widget _buildAds(PageController controller) {
    return SizedBox(
          height: 150,

          child: PageView(
            scrollDirection: Axis.horizontal,
            controller: controller,
            children: fakeAds.map((e) => AdView(ad : e)).toList(),
            /* children:  <Widget>[
              AdView(
                ad : fakeAds[0]
              ),
              AdView(
                ad :  fakeAds[1]
              ),
              AdView(
                 ad : fakeAds[2]
              ),
            ], */
          ),
        );
  }

Widget _buildNotice() {
  return Column(
    //shrinkWrap: true, //스크롤이 안 되고 , 사이즈가 있는 Column처럼 동작
    children: List.generate(50, (index) => ListTile(
      leading: Icon(Icons.notifications),
      title: Text('공지 $index'),
      trailing: Icon(Icons.navigate_next_outlined),
    )),
  );
}
}

