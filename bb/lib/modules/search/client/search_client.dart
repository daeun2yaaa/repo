import 'package:bb/modules/search/model/search_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../constants.dart';

part 'search_client.g.dart';

@RestApi(baseUrl: URL)
abstract class SearchClient {
  factory SearchClient(Dio dio) = _SearchClient;

  /// 연관 태그 가져오기
  @GET("tag/search?q={keyword}&per_page=8")
  Future<List<SearchModel>> getRelatedSearchResult(@Path("keyword") String keyword);

  /// 검색 결과 (post, events)
  @GET("tag/data?q={keyword}&per_page=6")
  Future getDataResult(@Path("keyword") String keyword);
}
