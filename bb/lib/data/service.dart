import 'package:bb/common/common.dart';
import 'package:bb/data/model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/foundation.dart';

Future<List<Related>> getRelatedSearchResult(String keyword) async{
  final response = await http.get(Uri.parse('${Common.URL}tag/search?q=$keyword&per_page=8'),
    headers: Common.header,
  );

  List<dynamic> list = jsonDecode(response.body);
  List<Related> data = list.map((item) => Related.fromJson(item)).toList();

  return data;
}

Future<Data> getDataResult(String keyword) async{
  final response = await http.get(Uri.parse('${Common.URL}tag/data?q=$keyword&per_page=6'),
    headers: Common.header,
  );

  return compute(parseDataResult, utf8.decode(response.bodyBytes));
}

Data parseDataResult(String responseBody) {
  return Data.fromJson(json.decode(responseBody));
}