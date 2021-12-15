import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:substring_highlight/substring_highlight.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:bb/common/function.dart';
import 'data/model.dart';
import 'data/service.dart';

void main() {
  runApp(
      MultiProvider(
          providers:[
            ChangeNotifierProvider<SearchResult>(create: (_) => new SearchResult()),
          ],
        child: Search(),
      ));
}

class Search extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {

  @override
  _SearchState createState() => _SearchState();
}


class _SearchState extends State<SearchPage> {

  bool isSearch=true;

  String keyword;
  var _searchController = TextEditingController();

  List<Related> relatedList= List<Related>();
  List<Posts> postList= List<Posts>();
  List<Events> eventList= List<Events>();

  @override
  Widget build(BuildContext context) {

    relatedList = Provider.of<SearchResult>(context).result;
    postList = Provider.of<SearchResult>(context).posts;
    eventList = Provider.of<SearchResult>(context).events;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          titleSpacing: 15,
          title : Container(
            width: MediaQuery.of(context).size.width,
            child: TextFormField(
              controller: _searchController,
              maxLines: 1,
              cursorWidth: 2,
              cursorColor: Function.mainColor,
              cursorHeight: 23,
              style: TextStyle(color: Colors.black, fontSize: 15, decoration: TextDecoration.none),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[400]),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Function.mainColor),
                ),
                hintText: keyword!=null?keyword:'궁금한 증상이나 주제를 입력하세요',
              ),
              onChanged : (String value){
                setState(() {
                  isSearch=true;
                  keyword=value;
                  if(keyword=='' || keyword==null)
                    _searchController.clear();
                  else
                    Provider.of<SearchResult>(context, listen:false).getRelate(keyword);
                });
              },
              onEditingComplete: (){
                setState(() {
                  _searchController.clear();
                  isSearch=false;
                  FocusScope.of(context).unfocus();
                });
                Provider.of<SearchResult>(context, listen:false).getResult(keyword);
              },
            ),
          ),
          leadingWidth:40,
          leading:Padding(
            padding: EdgeInsets.only(left: 15),
            child: InkWell(
              child: const Icon(Icons.arrow_back, color:Colors.black),
              onTap: () {
                setState(() {
                  if(!isSearch) {
                    isSearch=true; 
                    keyword=null;
                    FocusScope.of(context).unfocus();
                  }
                });
              },
            ),
          )
        ),
        body: searchScreen()
    );
  }

  Widget searchScreen() {
    return  isSearch?
    SingleChildScrollView(
      child:Container(
          padding:EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if(relatedList.length>0 && keyword!=null && keyword!='')
                for(int i=0; i<relatedList.length; i++)
                  if(relatedList[i].name.contains(keyword))
                    InkWell(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        child: SubstringHighlight(
                          text: relatedList[i].name,
                          term: keyword,
                          textStyle: TextStyle(
                            color: Colors.black87,
                          ),
                          textStyleHighlight: TextStyle(
                            color: Function.mainColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      onTap: (){
                        setState(() {
                          _searchController.clear();
                          keyword=relatedList[i].name;
                          isSearch=false;
                          FocusScope.of(context).unfocus();
                        });
                        Provider.of<SearchResult>(context, listen:false).getResult(relatedList[i].name);
                      },
                    ),
            ],
          )
      ),
    )
        : SingleChildScrollView(
      child:Container(
        padding:EdgeInsets.all(30),
        child:postList.length==0 ? Center(child:CircularProgressIndicator())
        : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Text('컨텐츠 검색 결과', style:TextStyle(color:Function.mainColor, fontSize: 13.5)),
            SizedBox(height:10),
            for(int i=0;i<postList.length-2;i++)
              InkWell(
                child:  Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey[300],
                      width: 1.0,
                      ),
                    ),
                  ),
                  child: SubstringHighlight(
                    text: postList[i].title,
                    term: keyword,
                    textStyle: TextStyle(
                      color: Colors.black87,
                    ),
                    textStyleHighlight: TextStyle(              
                      color: Function.mainColor,
                      fontWeight: FontWeight.w700,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                onTap: ()=> launch(postList[i].link),
              ),
            SizedBox(height:30),
            Text('상품 검색 결과', style:TextStyle(color:Function.mainColor, fontSize: 13.5)),
            SizedBox(height:15),
            Center(
              child: Wrap(
                spacing: 10.0, // gap between adjacent chips
                runSpacing: 15.0, // gap between lines
                children: [
                  for(int i=0;i<eventList.length;i++)
                    InkWell(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin:EdgeInsets.only(bottom:7),
                            width: MediaQuery.of(context).size.width/3.8,
                            child: Stack(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child:  Image.network((eventList[i].photo), fit: BoxFit.cover)
                                ),
                                Positioned(
                                  bottom:0,
                                  right:0,
                                  child:Container(
                                    padding: EdgeInsets.symmetric(horizontal: 5.5, vertical: 3.5),
                                    decoration: BoxDecoration(
                                      color: Function.mainColor,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child:Text(eventList[i].dcrate, style:TextStyle(fontWeight: FontWeight.w600, color:Colors.white, fontSize: 13)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(eventList[i].brand.name, style:TextStyle(fontWeight: FontWeight.w600, color:Colors.black45, fontSize: 10)),
                          Container(
                            width: MediaQuery.of(context).size.width/3.8,
                            child: Text(eventList[i].title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style:TextStyle(fontSize: 12)),
                          ),
                          Text(Function.setPrice(eventList[i].dcprice),style:TextStyle(fontWeight: FontWeight.w700, fontSize: 12)),
                        ],
                      ),
                      onTap: ()=> launch(eventList[i].link),
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SearchResult with ChangeNotifier {
  List<Related> result = List<Related>();
  List<Posts> posts = List<Posts>();
  List<Events> events = List<Events>();

  void getRelate(String keyword) {
    getRelatedSearchResult(keyword).then((value) {
      clear();
      result=value;
      notifyListeners();
    });
  }

  void clear() {
    result.clear();
    posts.clear();
    events.clear();
    notifyListeners();
  }

  void getResult(String keyword) {
    clear();
    getDataResult(keyword).then((value) {
      posts=value.dataList.posts;
      events=value.dataList.events;
      notifyListeners();
    });
  }
}
