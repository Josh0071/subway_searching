import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_searching_app/model/real_time_arrival_list.dart';

class SubwayApi {
  static const baseUrl = 'http://swopenapi.seoul.go.kr/api';

  Future<List<RealtimeArrivalList>?>? getImages(String station) async {
    final result = await http.get(Uri.parse(
        '$baseUrl/subway/sample/json/realtimeStationArrival/0/5/$station'));

    final jsonResponse = jsonDecode(result.body);
    Iterable itemsJson = jsonResponse['realtimeArrivalList'];
    return itemsJson.map((e) => RealtimeArrivalList.fromJson(e)).toList();
  }
}
