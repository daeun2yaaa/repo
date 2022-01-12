import 'package:bb/modules/search/search_provider.dart';
import 'package:bb/modules/search/widgets/related_result.dart';
import 'package:bb/modules/search/widgets/search_result.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';

class SearchScreen extends StatelessWidget {
  late SearchResultProvider _searchResultProvider;

  @override
  Widget build(BuildContext context) {
    _searchResultProvider = Provider.of<SearchResultProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: MediaQuery.of(context).size.width,
          child: TextFormField(
            cursorColor: mainColor,
            cursorHeight: 23,
            style: const TextStyle(color: Colors.black, fontSize: 15, decoration: TextDecoration.none),
            decoration: InputDecoration(
              hintText: _searchResultProvider.searchWords.length < 0 ? _searchResultProvider.searchWords : '궁금한 증상이나 주제를 입력하세요',
            ),
            onChanged: (String value) {
              if (value.length > 0)
                _searchResultProvider.isSearch = true;
              else
                _searchResultProvider.isSearch = false;

              _searchResultProvider.isEnter = false;
              _searchResultProvider.searchWords = value;
              _searchResultProvider.getRelate();
            },
            onFieldSubmitted: (_) {
              _searchResultProvider.isEnter = true;
              _searchResultProvider.getResult();
              FocusScope.of(context).unfocus();
            },
          ),
        ),
        leadingWidth: 40,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: const Icon(Icons.arrow_back, color: Colors.black),
            onTap: () {},
          ),
        ),
      ),
      body: FutureBuilder(
        future: _searchResultProvider.initProvider(context, token: token),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Consumer<SearchResultProvider>(
              builder: (context, _searchResultProvider, _) {
                return _searchResultProvider.isSearch
                    ? _searchResultProvider.isEnter
                        ? _searchResultProvider.searchResult.length > 0
                            ? SearchResultWidget()
                            : CircularProgressIndicator()
                        : RelatedResultWidget()
                    : const Center(child: Text('검색어 입력'));
              },
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
