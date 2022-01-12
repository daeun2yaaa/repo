import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:substring_highlight/substring_highlight.dart';

import '../../../constants.dart';
import '../search_provider.dart';

class RelatedResultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _searchResultProvider = Provider.of<SearchResultProvider>(context, listen: false);

    return ListView.builder(
        itemCount: _searchResultProvider.result.length,
        itemBuilder: (context, index) {
          return InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              child: SubstringHighlight(
                text: _searchResultProvider.result[index].name,
                term: _searchResultProvider.searchWords,
                textStyle: TextStyle(color: Colors.black87),
                textStyleHighlight: TextStyle(
                  color: mainColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            onTap: () {
              _searchResultProvider.isEnter = true;
              _searchResultProvider.searchWords = _searchResultProvider.result[index].name;
              _searchResultProvider.getResult();
              FocusScope.of(context).unfocus();
            },
          );
        });
  }
}
