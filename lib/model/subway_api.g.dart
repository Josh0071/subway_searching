import 'package:json_annotation/json_annotation.dart';
import 'package:image_searching_app/data/api.dart';
import 'package:image_searching_app/model/subway.dart';

part ‘subway_api.g.dart’;

@JsonSerializable()
class SubwayApi {
  int? status;
  String? code;
  String? message;
  List<SubwayApi>? realtimeArrivalList;

  SubwayApi(this.status, this.code, this.message, this.realtimeArrivalList);

  factory SubwayApi.fromJson(Map<String, dynamic> json) => _$SubwayApiFromJson(json);
  Map<String, dynamic> toJson() => _$SubwayApiToJson(this);
}