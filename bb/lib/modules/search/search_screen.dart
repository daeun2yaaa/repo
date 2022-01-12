import 'package:bb/modules/search/model/search_model.dart';
import 'package:bb/modules/search/search_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:substring_highlight/substring_highlight.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';
import 'client/search_client.dart';

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
              hintText: '궁금한 증상이나 주제를 입력하세요',
            ),
            onChanged: (String value) {
              _searchResultProvider.searchWords = value;
              _searchResultProvider.getRelate();

              if(value.length > 0) _searchResultProvider.isSearch = true;
              else _searchResultProvider.isSearch = false;
            },
            onEditingComplete: () {
              _searchResultProvider.getResult();
              _searchResultProvider.isSearch = false;
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
                      return _searchResultProvider.isSearch ? ListView.builder(
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
                                _searchResultProvider.searchWords = _searchResultProvider.result[index].name;
                                _searchResultProvider.getResult();
                                _searchResultProvider.isSearch = false;
                                FocusScope.of(context).unfocus();
                              },
                            );
                          })
                      :Container(color:Colors.black38, child:Text('검색어 입력'));
                    },
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            )
      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Text('컨텐츠 검색 결과', style: TextStyle(color: mainColor, fontSize: 13.5)),
      //     SizedBox(height: 10),
      //     for (int i = 0; i < 3; i++)
      //       InkWell(
      //         child: Container(
      //           padding: EdgeInsets.symmetric(vertical: 15),
      //           width: MediaQuery.of(context).size.width,
      //           decoration: BoxDecoration(
      //             border: Border(
      //               bottom: BorderSide(
      //                 color: Colors.grey[300]!,
      //                 width: 1.0,
      //               ),
      //             ),
      //           ),
      //           child: SubstringHighlight(
      //             text: 'dd',
      //             term: _searchResultProvider.searchWords,
      //             textStyle: TextStyle(color: Colors.black87),
      //             textStyleHighlight: TextStyle(
      //               color: mainColor,
      //               fontWeight: FontWeight.w700,
      //             ),
      //             maxLines: 1,
      //             overflow: TextOverflow.ellipsis,
      //           ),
      //         ),
      //         //onTap: () => launch(),
      //       ),
      //     SizedBox(height: 30),
      //     Text('상품 검색 결과', style: TextStyle(color: mainColor, fontSize: 13.5)),
      //     SizedBox(height: 15),
      //     Center(
      //       child: Wrap(
      //         spacing: 10.0, // gap between adjacent chips
      //         runSpacing: 15.0, // gap between lines
      //         children: [
      //           for (int i = 0; i < 4; i++)
      //             InkWell(
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Container(
      //                     margin: EdgeInsets.only(bottom: 7),
      //                     width: MediaQuery.of(context).size.width / 3.8,
      //                     child: Stack(
      //                       children: [
      //                         //  ClipRRect(borderRadius: BorderRadius.circular(8.0), child: Image.network((photo), fit: BoxFit.cover)),
      //                         Positioned(
      //                           bottom: 0,
      //                           right: 0,
      //                           child: Container(
      //                             padding: EdgeInsets.symmetric(horizontal: 5.5, vertical: 3.5),
      //                             decoration: BoxDecoration(
      //                               color: mainColor,
      //                               borderRadius: BorderRadius.circular(8),
      //                             ),
      //                             //child: Text(eventList[i].dcrate, style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 13)),
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   ),
      //                   //Text(eventList[i].brand.name, style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black45, fontSize: 10)),
      //                   // Container(
      //                   //   width: MediaQuery.of(context).size.width / 3.8,
      //                   //   child: Text(eventList[i].title, maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 12)),
      //                   // ),
      //                   // Text(getFormattedPrice(eventList[i].dcprice), style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12)),
      //                 ],
      //               ),
      //               //onTap: () => launch(eventList[i].link),
      //             )
      //         ],
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}
