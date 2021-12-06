import 'package:flutter/material.dart';
import 'package:kakao_t_ui/model/ad.dart';
import 'package:kakao_t_ui/model/menu.dart';

final List<String> urls = [
  'https://img3.yna.co.kr/photo/yna/YH/2015/12/29/PYH2015122914630001300_P2.jpg',
  'https://item.kakaocdn.net/do/b5d3d6a7b67fbf5afdaffb79fffbf8b1ce9463e040a07a9462a54df43e1d73f1',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUM_X37lZH5nVV_2dAdqa9ZStWKykW4i25vw&usqp=CAU',
  'https://img3.yna.co.kr/photo/yna/YH/2015/12/29/PYH2015122914630001300_P2.jpg',
  'https://img3.yna.co.kr/photo/yna/YH/2015/12/29/PYH2015122914630001300_P2.jpg',
  'https://img3.yna.co.kr/photo/yna/YH/2015/12/29/PYH2015122914630001300_P2.jpg',
  'https://img3.yna.co.kr/photo/yna/YH/2015/12/29/PYH2015122914630001300_P2.jpg',
];
final List<String> text =[
  '택시','기차','자가용','자가용','자가용','자가용','자가용'
];
final List<Menu> fakeMenus = [
  Menu(
    title: '버스',
    imageUrl: 'https://item.kakaocdn.net/do/d84248170c2c52303db27306a00fb861effd194bae87d73dd00522794070855d',
    isFavorite: true,
  ),
  Menu(
    title: '자전거',
    imageUrl: 'https://item.kakaocdn.net/do/d84248170c2c52303db27306a00fb861effd194bae87d73dd00522794070855d',
    isFavorite: false,
  ),
  ...List.generate(5, (index) => Menu(
    title: '택시',
    imageUrl: 'https://w.namu.la/s/40de86374ddd74756b31d4694a7434ee9398baa51fa5ae72d28f2eeeafdadf0c475c55c58e29a684920e0d6a42602b339f8aaf6d19764b04405a0f8bee7f598d2922db9475579419aac4635d0a71fdb8a4b2343cb550e6ed93e13c1a05cede75',
    isFavorite: false,
  )),
];
// final List<Menu> fakeMenus = List.generate(
//     7,
//     (idx) => Menu(
//           title:
//             text[idx],
//           isFavorite: false,
//           imageUrl:
//               urls[idx],
//         ));

final fakeAds = [
  Ad(
      title: '일어나 회사 가야지',
      text: '이왕 늦은거 택시타고 가자',
      color: Colors.red,
      imageUrl:
          'https://img3.yna.co.kr/photo/yna/YH/2015/12/29/PYH2015122914630001300_P2.jpg'),
  Ad(
      title: '일어나 회사 가야지',
      text: '이왕 늦은거 택시타고 가자',
      color: Colors.yellow,
      imageUrl:
          'https://item.kakaocdn.net/do/b5d3d6a7b67fbf5afdaffb79fffbf8b1ce9463e040a07a9462a54df43e1d73f1'),
  Ad(
      title: '일어나 회사 가야지',
      text: '이왕 늦은거 택시타고 가자',
      color: Colors.green,
      imageUrl:
          'https://img3.yna.co.kr/photo/yna/YH/2015/12/29/PYH2015122914630001300_P2.jpg'),
];
