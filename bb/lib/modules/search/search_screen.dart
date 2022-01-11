import 'package:bb/modules/search/model/search_model.dart';
import 'package:bb/modules/search/search_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:substring_highlight/substring_highlight.dart';

import '../../constants.dart';


class SearchScreen extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();
  late SearchResultProvider _searchResultProvider;

  @override
  Widget build(BuildContext context) {
    _searchResultProvider = Provider.of<SearchResultProvider>(context, listen: false);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: Container(
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                controller: _searchController,
                maxLines: 1,
                cursorWidth: 2,
                cursorColor: mainColor,
                cursorHeight: 23,
                style: TextStyle(color: Colors.black, fontSize: 15, decoration: TextDecoration.none),
                decoration: InputDecoration(
                  hintText: '궁금한 증상이나 주제를 입력하세요',
                ),
                onChanged: (String value) {
                   _searchResultProvider.setIsSearch(true);
                   _searchResultProvider.setKeyword(value);
                    if (_searchResultProvider.keyword == '')
                      _searchController.clear();
                    else
                      Provider.of<SearchResultProvider>(context, listen: false).getRelate(_searchResultProvider.keyword);
                  // setState(() {
                  //   isSearch = true;
                  //   keyword = value;
                  //   if (keyword == '')
                  //     _searchController.clear();
                  //   else
                  //     Provider.of<SearchResultProvider>(context, listen: false).getRelate(keyword);
                  // });
                },
                onEditingComplete: () {
                    _searchResultProvider.setIsSearch(false);
                    _searchController.clear();
                    FocusScope.of(context).unfocus();
                  // setState(() {
                  //   _searchController.clear();
                  //   isSearch = false;
                  //   FocusScope.of(context).unfocus();
                  // });
                  //Provider.of<SearchResultProvider>(context, listen: false).getResult(keyword);
                },
              ),
            ),
            leadingWidth: 40,
            leading: Padding(
              padding: EdgeInsets.only(left: 15),
              child: InkWell(
                child: const Icon(Icons.arrow_back, color: Colors.black),
                onTap: () {
                    _searchResultProvider.setIsSearch(false);
                    _searchController.clear();
                    FocusScope.of(context).unfocus();
                  // setState(() {
                  //   if (!isSearch) {
                  //     isSearch = true;
                  //     keyword = '';
                  //     FocusScope.of(context).unfocus();
                  //   }
                  // });
                },
              ),
            )),
        body: searchScreen(context));
  }

  Widget searchScreen(BuildContext context) {
    return _searchResultProvider.isSearch
        ? SingleChildScrollView(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (_searchResultProvider.keyword != '')
                for (int i = 0; i < _searchResultProvider.result.length; i++)
                  if (_searchResultProvider.result[i].name.contains(_searchResultProvider.keyword))
                    InkWell(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        child: SubstringHighlight(
                          text: _searchResultProvider.result[i].name,
                          term: _searchResultProvider.keyword,
                          textStyle: TextStyle(
                            color: Colors.black87,
                          ),
                          textStyleHighlight: TextStyle(
                            color: mainColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      onTap: () {
                        _searchResultProvider.setIsSearch(false);
                        _searchController.clear();
                        FocusScope.of(context).unfocus();
                        _searchResultProvider.setKeyword(_searchResultProvider.result[i].name);
                        // setState(() {
                        //   _searchController.clear();
                        //   keyword = _searchResultProvider.result[i].name;
                        //   isSearch = false;
                        //   FocusScope.of(context).unfocus();
                        // });
                        // Provider.of<SearchResultProvider>(context, listen: false).getResult(relatedList[i].name);
                      },
                    ),
            ],
          )),
    )
        : const SizedBox();
  }
}
