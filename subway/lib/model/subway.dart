class Subaway {
  Subaway({
    this.beginRow,
    this.endRow,
    this.curPage,
    this.pageRow,
    required this.totalCount,
    required this.rowNum,
    required this.selectedCount,
    required this.subwayId,
    this.subwayNm,
    required this.updnLine,
    required this.trainLineNm,
    required this.subwayHeading,
    required this.statnFid,
    required this.statnTid,
    required this.statnId,
    required this.statnNm,
    this.trainCo,
    required this.ordkey,
    required this.subwayList,
    required this.statnList,
    this.btrainSttus,
    required this.barvlDt,
    required this.btrainNo,
    required this.bstatnId,
    required this.bstatnNm,
    required this.recptnDt,
    required this.arvlMsg2,
    required this.arvlMsg3,
    required this.arvlCd,
  });
  late final Null beginRow;
  late final Null endRow;
  late final Null curPage;
  late final Null pageRow;
  late final int totalCount;
  late final int rowNum;
  late final int selectedCount;
  late final String subwayId;
  late final Null subwayNm;
  late final String updnLine;
  late final String trainLineNm;
  late final String subwayHeading;
  late final String statnFid;
  late final String statnTid;
  late final String statnId;
  late final String statnNm;
  late final Null trainCo;
  late final String ordkey;
  late final String subwayList;
  late final String statnList;
  late final Null btrainSttus;
  late final String barvlDt;
  late final String btrainNo;
  late final String bstatnId;
  late final String bstatnNm;
  late final String recptnDt;
  late final String arvlMsg2;
  late final String arvlMsg3;
  late final String arvlCd;

  Subaway.fromJson(Map<String, dynamic> json) {
    beginRow = json['beginRow'];
    endRow = json['endRow'];
    curPage = json['curPage'];
    pageRow = json['pageRow'];
    totalCount = json['totalCount'];
    rowNum = json['rowNum'];
    selectedCount = json['selectedCount'];
    subwayId = json['subwayId'];
    subwayNm = json['subwayNm'];
    updnLine = json['updnLine'];
    trainLineNm = json['trainLineNm'];
    subwayHeading = json['subwayHeading'];
    statnFid = json['statnFid'];
    statnTid = json['statnTid'];
    statnId = json['statnId'];
    statnNm = json['statnNm'];
    trainCo = json['trainCo'];
    ordkey = json['ordkey'];
    subwayList = json['subwayList'];
    statnList = json['statnList'];
    btrainSttus = json['btrainSttus'];
    barvlDt = json['barvlDt'];
    btrainNo = json['btrainNo'];
    bstatnId = json['bstatnId'];
    bstatnNm = json['bstatnNm'];
    recptnDt = json['recptnDt'];
    arvlMsg2 = json['arvlMsg2'];
    arvlMsg3 = json['arvlMsg3'];
    arvlCd = json['arvlCd'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['beginRow'] = beginRow;
    _data['endRow'] = endRow;
    _data['curPage'] = curPage;
    _data['pageRow'] = pageRow;
    _data['totalCount'] = totalCount;
    _data['rowNum'] = rowNum;
    _data['selectedCount'] = selectedCount;
    _data['subwayId'] = subwayId;
    _data['subwayNm'] = subwayNm;
    _data['updnLine'] = updnLine;
    _data['trainLineNm'] = trainLineNm;
    _data['subwayHeading'] = subwayHeading;
    _data['statnFid'] = statnFid;
    _data['statnTid'] = statnTid;
    _data['statnId'] = statnId;
    _data['statnNm'] = statnNm;
    _data['trainCo'] = trainCo;
    _data['ordkey'] = ordkey;
    _data['subwayList'] = subwayList;
    _data['statnList'] = statnList;
    _data['btrainSttus'] = btrainSttus;
    _data['barvlDt'] = barvlDt;
    _data['btrainNo'] = btrainNo;
    _data['bstatnId'] = bstatnId;
    _data['bstatnNm'] = bstatnNm;
    _data['recptnDt'] = recptnDt;
    _data['arvlMsg2'] = arvlMsg2;
    _data['arvlMsg3'] = arvlMsg3;
    _data['arvlCd'] = arvlCd;
    return _data;
  }
}
