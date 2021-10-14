import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_searching_app/model/subway.dart';

class SubwayApi {
  static const base_url = 'http://swopenapi.seoul.go.kr/api';

  Future<List<RealtimeArrivalList>?>? getImages(String station) async {
    final response = await http.get(Uri.parse(
        '$base_url/subway/sample/json/realtimeStationArrival/0/5/$station'));

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    Subway result = Subway.fromJson(jsonResponse);

    return result.realtimeArrivalList;}}

