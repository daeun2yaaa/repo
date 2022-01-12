import 'package:bb/utils/get_formatted_price.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:substring_highlight/substring_highlight.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';
import '../search_provider.dart';

class SearchResultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _searchResultProvider = Provider.of<SearchResultProvider>(context, listen: false);

    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('컨텐츠 검색 결과', style: TextStyle(color: mainColor, fontSize: 13.5)),
              for (int i = 0; i < _searchResultProvider.searchResult['data']['posts'].length; i++)
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey[300]!,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: SubstringHighlight(
                      text: _searchResultProvider.searchResult['data']['posts'][i]['title'],
                      term: _searchResultProvider.searchWords,
                      textStyle: const TextStyle(color: Colors.black87),
                      textStyleHighlight: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.w700,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  onTap: () => launch(_searchResultProvider.searchResult['data']['posts'][i]['link']),
                ),
              SizedBox(height: 30),
              Text('상품 검색 결과', style: TextStyle(color: mainColor, fontSize: 13.5)),
              SizedBox(height: 15),
              Center(
                child: Wrap(
                  spacing: 10.0, // gap between adjacent chips
                  runSpacing: 15.0, // gap between lines
                  children: [
                    for (int i = 0; i < _searchResultProvider.searchResult['data']['events'].length; i++)
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 7),
                              width: MediaQuery.of(context).size.width / 3.8,
                              child: Stack(
                                children: [
                                  ClipRRect(borderRadius: BorderRadius.circular(8.0), child: Image.network((_searchResultProvider.searchResult['data']['events'][i]['photo']), fit: BoxFit.cover)),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 5.5, vertical: 3.5),
                                      decoration: BoxDecoration(
                                        color: mainColor,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text(_searchResultProvider.searchResult['data']['events'][i]['dcrate'], style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 13)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(_searchResultProvider.searchResult['data']['events'][i]['brand']['name'],
                                style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black45, fontSize: 10)),
                            Container(
                              width: MediaQuery.of(context).size.width / 3.8,
                              child: Text(_searchResultProvider.searchResult['data']['events'][i]['title'], maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 12)),
                            ),
                            Text(getFormattedPrice(_searchResultProvider.searchResult['data']['events'][i]['dcprice']), style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12)),
                          ],
                        ),
                        onTap: () => launch(_searchResultProvider.searchResult['data']['events'][i]['link']),
                      )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
