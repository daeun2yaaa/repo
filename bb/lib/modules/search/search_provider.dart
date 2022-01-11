import 'package:flutter/material.dart';
import 'client/search_client.dart';
import 'model/search_model.dart';

class SearchResultProvider with ChangeNotifier {
  late SearchClient _searchClient;
  late List<SearchModel> result;
  bool isSearch = true;
  String keyword = '';

  void getRelate(String keyword) async {
    await _searchClient.getRelatedSearchResult(keyword).then((value) {
      result.clear();
      result = value;
      notifyListeners();
    });
  }

  bool setIsSearch(bool result){
    isSearch=result;
    notifyListeners();

    return isSearch;
  }

  void setKeyword(String keyword){
    keyword=keyword;
    notifyListeners();
  }
}