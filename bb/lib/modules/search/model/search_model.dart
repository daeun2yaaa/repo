import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_model.g.dart';

part 'search_model.freezed.dart';

@freezed
class SearchModel with _$SearchModel {
  factory SearchModel({
    required int id,
    required String name,
    @JsonKey(name: "search_count") required int searchCount,
    @JsonKey(name: "use_count") required int useCount,
  }) = _SearchModel;

  factory SearchModel.fromJson(Map<String, dynamic> json) => _$SearchModelFromJson(json);
}

@freezed
class PostsModel with _$PostsModel {
  factory PostsModel({
    required int id,
    required String title,
    String? heroimage,
    String? photo,
    required String link,
    String? company,
  }) = _PostsModel;

  factory PostsModel.fromJson(Map<String, dynamic> json) => _$PostsModelFromJson(json);
}

@freezed
class EventModel with _$EventModel {
  factory EventModel({
    required int id,
    required String title,
    required String link,
    required String photo,
    required String dcrate,
    required String dcprice,
    required String listprice,
    required int my_bookmark,
    required String? brand,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, dynamic> json) => _$EventModelFromJson(json);
}
