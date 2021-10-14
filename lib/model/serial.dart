import 'package:json_annotation/json_annotation.dart';

part 'subway_api.g.dart';

@JsonSerializable()
class SubwayApi{

  String trainLineNm;
  String arvlMsg2;

  SubwayApi(this.trainLineNm, this.arvlMsg2);

  factory SubwayApi.fromJson(Map<String, dynamic> json) =>
      _$SubwayApiFromJson(json);
  Map<String, dynamic> toJson() => _$SubwayApiToJson(this);
}