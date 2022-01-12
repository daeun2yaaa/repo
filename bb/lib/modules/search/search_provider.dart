import 'package:bb/utils/client_helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'client/search_client.dart';
import 'model/search_model.dart';

class SearchResultProvider with ChangeNotifier {

  late SearchClient searchClient;

  List<SearchModel> result = [];
  dynamic searchResult = [];

  Future<bool> initProvider(BuildContext context, {required String token}) async {
    searchClient = SearchClient(setDio(token: token));

    return true;
  }

  bool _isSearch = true;
  bool _isEnter = false;
  String _searchWords = '';

  bool get isSearch => _isSearch;

  set isSearch(bool isSearch){
    _isSearch=isSearch;
    notifyListeners();
  }

  bool get isEnter => _isEnter;

  set isEnter(bool isEnter){
    _isEnter=isEnter;
    notifyListeners();
  }

  String get searchWords => _searchWords;

  set searchWords(String searchWords){
    _searchWords=searchWords;
    notifyListeners();
  }

  void getRelate() async {
    await searchClient.getRelatedSearchResult(searchWords).then((value) {
      result.clear();
      result = value;
      notifyListeners();
    });
  }

  void getResult() async {
    await searchClient.getDataResult(searchWords).then((value) {
      searchResult=value;
      notifyListeners();
    }).catchError((obj){
      switch (obj.runtimeType) {
        case DioError:
          print((obj as DioError).response);
          break;
        default:
          break;
      }
    });
  }

}
