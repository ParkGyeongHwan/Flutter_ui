class Data {
  Data({
    required this.addr,
    required this.code,
    required this.color,
    required this.inventory,
    required this.lat,
    required this.lng,
    required this.name,
    this.openTime,
    required this.price,
    required this.regDt,
    required this.tel,
  });
  late final String addr;
  late final String code;
  late final String color;
  late final String inventory;
  late final String lat;
  late final String lng;
  late final String name;
  late final Null openTime;
  late final String price;
  late final String regDt;
  late final String tel;

  Data.fromJson(Map<String, dynamic> json) {
    addr = json['addr'];
    code = json['code'];
    color = json['color'];
    inventory = json['inventory'];
    lat = json['lat'];
    lng = json['lng'];
    name = json['name'];
    openTime = json['openTime'];
    price = json['price'];
    regDt = json['regDt'];
    tel = json['tel'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['addr'] = addr;
    _data['code'] = code;
    _data['color'] = color;
    _data['inventory'] = inventory;
    _data['lat'] = lat;
    _data['lng'] = lng;
    _data['name'] = name;
    _data['openTime'] = openTime;
    _data['price'] = price;
    _data['regDt'] = regDt;
    _data['tel'] = tel;
    return _data;
  }
}
