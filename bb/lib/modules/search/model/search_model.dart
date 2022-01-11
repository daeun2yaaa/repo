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
