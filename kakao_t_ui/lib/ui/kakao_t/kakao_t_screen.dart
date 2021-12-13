import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kakao_t_ui/data/fake_data.dart';
import 'package:kakao_t_ui/ui/kakao_t/conponents/ad_view.dart';
import 'package:kakao_t_ui/ui/kakao_t/detail_screen.dart';


import 'conponents/menu_widget.dart';

class KakaoTScreen extends StatefulWidget {
  const KakaoTScreen({Key key}) : super(key: key);

  @override
  State<KakaoTScreen> createState() => _KakaoTScreenState();
}

class _KakaoTScreenState extends State<KakaoTScreen> {
  int _index = 0;
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
      body: _buildbody(context),
    );
  }

  Widget _buildbody(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          _buildMenu2(context),
          _buildAds(controller),
          _buildNotice()
        ],
      ),
    );
  }

  Widget _buildMenu2(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: 2 / 3,
      crossAxisCount: 4,
      children: fakeMenus.map((menu) => GestureDetector(
        onTap: () {
           Navigator.push(
                   context,
                   MaterialPageRoute
                 (builder: (context) => DetailScreen(
                     menu : menu,
                   )),
         );
        },
          child: MenuWidget(menu : menu))).toList(),
    );
  }

  Widget _buildAds(PageController controller) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 150 ,
            viewportFraction: 0.9,
            autoPlay: true,
            onPageChanged: (index,_) {
              setState(() {
                _index = index;
              });
            }


          ),
          items: fakeAds.map((e) => AdView(ad : e)).toList(),
        ),
        Row(
          children: fakeAds.asMap().entries.map((e) {
            return Container(
              width: 12.0,
              height: 12.0,
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: e.key == _index ? Colors.black : Colors.white,
        ),
         );
    }).toList(),
      ),
      ],
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

