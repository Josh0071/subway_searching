import 'package:json_annotation/json_annotation.dart';

part 'real_time_arrival_list.g.dart';

@JsonSerializable()
class RealtimeArrivalList{

  String trainLineNm;
  String arvlMsg2;

  RealtimeArrivalList(this.trainLineNm, this.arvlMsg2);

  factory RealtimeArrivalList.fromJson(Map<String, dynamic> json) =>
      _$RealtimeArrivalListFromJson(json);
  Map<String, dynamic> toJson() => _$RealtimeArrivalListToJson(this);
}
