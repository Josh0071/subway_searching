/// errorMessage : {"status":200,"code":"INFO-000","message":"정상 처리되었습니다.","link":"","developerMessage":"","total":18}
/// realtimeArrivalList : [{"beginRow":null,"endRow":null,"curPage":null,"pageRow":null,"totalCount":18,"rowNum":1,"selectedCount":5,"subwayId":"1065","subwayNm":null,"updnLine":"상행","trainLineNm":"검암행 - 공덕방면","subwayHeading":"오른쪽","statnFid":"1065006502","statnTid":"1065006501","statnId":"1065006501","statnNm":"서울","trainCo":null,"ordkey":"01000검암0","subwayList":"1001,1004,1063,1065","statnList":"1001000133,1004000426,1063080313,1065006501","btrainSttus":null,"barvlDt":"0","btrainNo":"A3081","bstatnId":"70","bstatnNm":"검암","recptnDt":"2021-10-14 18:06:56.0","arvlMsg2":"서울 출발","arvlMsg3":"서울","arvlCd":"2"},{"beginRow":null,"endRow":null,"curPage":null,"pageRow":null,"totalCount":18,"rowNum":2,"selectedCount":5,"subwayId":"1004","subwayNm":null,"updnLine":"상행","trainLineNm":"당고개행 - 회현방면","subwayHeading":"오른쪽","statnFid":"1004000427","statnTid":"1004000425","statnId":"1004000426","statnNm":"서울","trainCo":null,"ordkey":"01001당고개0","subwayList":"1001,1004,1063,1065","statnList":"1001000133,1004000426,1063080313,1065006501","btrainSttus":null,"barvlDt":"115","btrainNo":"4144","bstatnId":"0","bstatnNm":"당고개","recptnDt":"2021-10-14 18:07:14.0","arvlMsg2":"전역 도착","arvlMsg3":"숙대입구","arvlCd":"5"},{"beginRow":null,"endRow":null,"curPage":null,"pageRow":null,"totalCount":18,"rowNum":3,"selectedCount":5,"subwayId":"1001","subwayNm":null,"updnLine":"상행","trainLineNm":"동두천행 - 시청방면","subwayHeading":"오른쪽","statnFid":"1001000134","statnTid":"1001000132","statnId":"1001000133","statnNm":"서울","trainCo":null,"ordkey":"01001동두천0","subwayList":"1001,1004,1063,1065","statnList":"1001000133,1004000426,1063080313,1065006501","btrainSttus":null,"barvlDt":"0","btrainNo":"0150","bstatnId":"189","bstatnNm":"동두천","recptnDt":"2021-10-14 18:04:55.0","arvlMsg2":"전역 도착","arvlMsg3":"남영","arvlCd":"5"},{"beginRow":null,"endRow":null,"curPage":null,"pageRow":null,"totalCount":18,"rowNum":4,"selectedCount":5,"subwayId":"1001","subwayNm":null,"updnLine":"상행","trainLineNm":"동두천행 - 시청방면","subwayHeading":"오른쪽","statnFid":"1001000134","statnTid":"1001000132","statnId":"1001000133","statnNm":"서울","trainCo":null,"ordkey":"01001동두천0","subwayList":"1001,1004,1063,1065","statnList":"1001000133,1004000426,1063080313,1065006501","btrainSttus":null,"barvlDt":"150","btrainNo":"0150","bstatnId":"189","bstatnNm":"동두천","recptnDt":"2021-10-14 18:07:01.0","arvlMsg2":"전역 출발","arvlMsg3":"남영","arvlCd":"3"},{"beginRow":null,"endRow":null,"curPage":null,"pageRow":null,"totalCount":18,"rowNum":5,"selectedCount":5,"subwayId":"1063","subwayNm":null,"updnLine":"상행","trainLineNm":"문산행 - 신촌(경의중앙선)방면","subwayHeading":"오른쪽","statnFid":"1063080313","statnTid":"1063080312","statnId":"1063080313","statnNm":"서울","trainCo":null,"ordkey":"01001문산0","subwayList":"1001,1004,1063,1065","statnList":"1001000133,1004000426,1063080313,1065006501","btrainSttus":null,"barvlDt":"0","btrainNo":"5109","bstatnId":"234","bstatnNm":"문산","recptnDt":"2021-10-14 18:06:55.0","arvlMsg2":"전역 진입","arvlMsg3":"홍대입구","arvlCd":"4"}]

class Subway {
  Subway({
      ErrorMessage? errorMessage, 
      List<RealtimeArrivalList>? realtimeArrivalList,}){
    _errorMessage = errorMessage;
    _realtimeArrivalList = realtimeArrivalList;
}

  Subway.fromJson(dynamic json) {
    _errorMessage = json['errorMessage'] != null ? ErrorMessage.fromJson(json['errorMessage']) : null;
    if (json['realtimeArrivalList'] != null) {
      _realtimeArrivalList = [];
      json['realtimeArrivalList'].forEach((v) {
        _realtimeArrivalList?.add(RealtimeArrivalList.fromJson(v));
      });
    }
  }
  ErrorMessage? _errorMessage;
  List<RealtimeArrivalList>? _realtimeArrivalList;

  ErrorMessage? get errorMessage => _errorMessage;
  List<RealtimeArrivalList>? get realtimeArrivalList => _realtimeArrivalList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_errorMessage != null) {
      map['errorMessage'] = _errorMessage?.toJson();
    }
    if (_realtimeArrivalList != null) {
      map['realtimeArrivalList'] = _realtimeArrivalList?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// beginRow : null
/// endRow : null
/// curPage : null
/// pageRow : null
/// totalCount : 18
/// rowNum : 1
/// selectedCount : 5
/// subwayId : "1065"
/// subwayNm : null
/// updnLine : "상행"
/// trainLineNm : "검암행 - 공덕방면"
/// subwayHeading : "오른쪽"
/// statnFid : "1065006502"
/// statnTid : "1065006501"
/// statnId : "1065006501"
/// statnNm : "서울"
/// trainCo : null
/// ordkey : "01000검암0"
/// subwayList : "1001,1004,1063,1065"
/// statnList : "1001000133,1004000426,1063080313,1065006501"
/// btrainSttus : null
/// barvlDt : "0"
/// btrainNo : "A3081"
/// bstatnId : "70"
/// bstatnNm : "검암"
/// recptnDt : "2021-10-14 18:06:56.0"
/// arvlMsg2 : "서울 출발"
/// arvlMsg3 : "서울"
/// arvlCd : "2"

class RealtimeArrivalList {
  RealtimeArrivalList({
      dynamic beginRow, 
      dynamic endRow, 
      dynamic curPage, 
      dynamic pageRow, 
      int? totalCount, 
      int? rowNum, 
      int? selectedCount, 
      String? subwayId, 
      dynamic subwayNm, 
      String? updnLine, 
      String? trainLineNm, 
      String? subwayHeading, 
      String? statnFid, 
      String? statnTid, 
      String? statnId, 
      String? statnNm, 
      dynamic trainCo, 
      String? ordkey, 
      String? subwayList, 
      String? statnList, 
      dynamic btrainSttus, 
      String? barvlDt, 
      String? btrainNo, 
      String? bstatnId, 
      String? bstatnNm, 
      String? recptnDt, 
      String? arvlMsg2, 
      String? arvlMsg3, 
      String? arvlCd,}){
    _beginRow = beginRow;
    _endRow = endRow;
    _curPage = curPage;
    _pageRow = pageRow;
    _totalCount = totalCount;
    _rowNum = rowNum;
    _selectedCount = selectedCount;
    _subwayId = subwayId;
    _subwayNm = subwayNm;
    _updnLine = updnLine;
    _trainLineNm = trainLineNm;
    _subwayHeading = subwayHeading;
    _statnFid = statnFid;
    _statnTid = statnTid;
    _statnId = statnId;
    _statnNm = statnNm;
    _trainCo = trainCo;
    _ordkey = ordkey;
    _subwayList = subwayList;
    _statnList = statnList;
    _btrainSttus = btrainSttus;
    _barvlDt = barvlDt;
    _btrainNo = btrainNo;
    _bstatnId = bstatnId;
    _bstatnNm = bstatnNm;
    _recptnDt = recptnDt;
    _arvlMsg2 = arvlMsg2;
    _arvlMsg3 = arvlMsg3;
    _arvlCd = arvlCd;
}

  RealtimeArrivalList.fromJson(dynamic json) {
    _beginRow = json['beginRow'];
    _endRow = json['endRow'];
    _curPage = json['curPage'];
    _pageRow = json['pageRow'];
    _totalCount = json['totalCount'];
    _rowNum = json['rowNum'];
    _selectedCount = json['selectedCount'];
    _subwayId = json['subwayId'];
    _subwayNm = json['subwayNm'];
    _updnLine = json['updnLine'];
    _trainLineNm = json['trainLineNm'];
    _subwayHeading = json['subwayHeading'];
    _statnFid = json['statnFid'];
    _statnTid = json['statnTid'];
    _statnId = json['statnId'];
    _statnNm = json['statnNm'];
    _trainCo = json['trainCo'];
    _ordkey = json['ordkey'];
    _subwayList = json['subwayList'];
    _statnList = json['statnList'];
    _btrainSttus = json['btrainSttus'];
    _barvlDt = json['barvlDt'];
    _btrainNo = json['btrainNo'];
    _bstatnId = json['bstatnId'];
    _bstatnNm = json['bstatnNm'];
    _recptnDt = json['recptnDt'];
    _arvlMsg2 = json['arvlMsg2'];
    _arvlMsg3 = json['arvlMsg3'];
    _arvlCd = json['arvlCd'];
  }
  dynamic _beginRow;
  dynamic _endRow;
  dynamic _curPage;
  dynamic _pageRow;
  int? _totalCount;
  int? _rowNum;
  int? _selectedCount;
  String? _subwayId;
  dynamic _subwayNm;
  String? _updnLine;
  String? _trainLineNm;
  String? _subwayHeading;
  String? _statnFid;
  String? _statnTid;
  String? _statnId;
  String? _statnNm;
  dynamic _trainCo;
  String? _ordkey;
  String? _subwayList;
  String? _statnList;
  dynamic _btrainSttus;
  String? _barvlDt;
  String? _btrainNo;
  String? _bstatnId;
  String? _bstatnNm;
  String? _recptnDt;
  String? _arvlMsg2;
  String? _arvlMsg3;
  String? _arvlCd;

  dynamic get beginRow => _beginRow;
  dynamic get endRow => _endRow;
  dynamic get curPage => _curPage;
  dynamic get pageRow => _pageRow;
  int? get totalCount => _totalCount;
  int? get rowNum => _rowNum;
  int? get selectedCount => _selectedCount;
  String? get subwayId => _subwayId;
  dynamic get subwayNm => _subwayNm;
  String? get updnLine => _updnLine;
  String? get trainLineNm => _trainLineNm;
  String? get subwayHeading => _subwayHeading;
  String? get statnFid => _statnFid;
  String? get statnTid => _statnTid;
  String? get statnId => _statnId;
  String? get statnNm => _statnNm;
  dynamic get trainCo => _trainCo;
  String? get ordkey => _ordkey;
  String? get subwayList => _subwayList;
  String? get statnList => _statnList;
  dynamic get btrainSttus => _btrainSttus;
  String? get barvlDt => _barvlDt;
  String? get btrainNo => _btrainNo;
  String? get bstatnId => _bstatnId;
  String? get bstatnNm => _bstatnNm;
  String? get recptnDt => _recptnDt;
  String? get arvlMsg2 => _arvlMsg2;
  String? get arvlMsg3 => _arvlMsg3;
  String? get arvlCd => _arvlCd;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['beginRow'] = _beginRow;
    map['endRow'] = _endRow;
    map['curPage'] = _curPage;
    map['pageRow'] = _pageRow;
    map['totalCount'] = _totalCount;
    map['rowNum'] = _rowNum;
    map['selectedCount'] = _selectedCount;
    map['subwayId'] = _subwayId;
    map['subwayNm'] = _subwayNm;
    map['updnLine'] = _updnLine;
    map['trainLineNm'] = _trainLineNm;
    map['subwayHeading'] = _subwayHeading;
    map['statnFid'] = _statnFid;
    map['statnTid'] = _statnTid;
    map['statnId'] = _statnId;
    map['statnNm'] = _statnNm;
    map['trainCo'] = _trainCo;
    map['ordkey'] = _ordkey;
    map['subwayList'] = _subwayList;
    map['statnList'] = _statnList;
    map['btrainSttus'] = _btrainSttus;
    map['barvlDt'] = _barvlDt;
    map['btrainNo'] = _btrainNo;
    map['bstatnId'] = _bstatnId;
    map['bstatnNm'] = _bstatnNm;
    map['recptnDt'] = _recptnDt;
    map['arvlMsg2'] = _arvlMsg2;
    map['arvlMsg3'] = _arvlMsg3;
    map['arvlCd'] = _arvlCd;
    return map;
  }

}

/// status : 200
/// code : "INFO-000"
/// message : "정상 처리되었습니다."
/// link : ""
/// developerMessage : ""
/// total : 18

class ErrorMessage {
  ErrorMessage({
      int? status, 
      String? code, 
      String? message, 
      String? link, 
      String? developerMessage, 
      int? total,}){
    _status = status;
    _code = code;
    _message = message;
    _link = link;
    _developerMessage = developerMessage;
    _total = total;
}

  ErrorMessage.fromJson(dynamic json) {
    _status = json['status'];
    _code = json['code'];
    _message = json['message'];
    _link = json['link'];
    _developerMessage = json['developerMessage'];
    _total = json['total'];
  }
  int? _status;
  String? _code;
  String? _message;
  String? _link;
  String? _developerMessage;
  int? _total;

  int? get status => _status;
  String? get code => _code;
  String? get message => _message;
  String? get link => _link;
  String? get developerMessage => _developerMessage;
  int? get total => _total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['code'] = _code;
    map['message'] = _message;
    map['link'] = _link;
    map['developerMessage'] = _developerMessage;
    map['total'] = _total;
    return map;
  }

}