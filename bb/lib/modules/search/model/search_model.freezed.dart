// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchModel _$SearchModelFromJson(Map<String, dynamic> json) {
  return _SearchModel.fromJson(json);
}

/// @nodoc
class _$SearchModelTearOff {
  const _$SearchModelTearOff();

  _SearchModel call(
      {required int id,
      required String name,
      @JsonKey(name: "search_count") required int searchCount,
      @JsonKey(name: "use_count") required int useCount}) {
    return _SearchModel(
      id: id,
      name: name,
      searchCount: searchCount,
      useCount: useCount,
    );
  }

  SearchModel fromJson(Map<String, Object?> json) {
    return SearchModel.fromJson(json);
  }
}

/// @nodoc
const $SearchModel = _$SearchModelTearOff();

/// @nodoc
mixin _$SearchModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "search_count")
  int get searchCount => throw _privateConstructorUsedError;
  @JsonKey(name: "use_count")
  int get useCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchModelCopyWith<SearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchModelCopyWith<$Res> {
  factory $SearchModelCopyWith(
          SearchModel value, $Res Function(SearchModel) then) =
      _$SearchModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      @JsonKey(name: "search_count") int searchCount,
      @JsonKey(name: "use_count") int useCount});
}

/// @nodoc
class _$SearchModelCopyWithImpl<$Res> implements $SearchModelCopyWith<$Res> {
  _$SearchModelCopyWithImpl(this._value, this._then);

  final SearchModel _value;
  // ignore: unused_field
  final $Res Function(SearchModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? searchCount = freezed,
    Object? useCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      searchCount: searchCount == freezed
          ? _value.searchCount
          : searchCount // ignore: cast_nullable_to_non_nullable
              as int,
      useCount: useCount == freezed
          ? _value.useCount
          : useCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SearchModelCopyWith<$Res>
    implements $SearchModelCopyWith<$Res> {
  factory _$SearchModelCopyWith(
          _SearchModel value, $Res Function(_SearchModel) then) =
      __$SearchModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      @JsonKey(name: "search_count") int searchCount,
      @JsonKey(name: "use_count") int useCount});
}

/// @nodoc
class __$SearchModelCopyWithImpl<$Res> extends _$SearchModelCopyWithImpl<$Res>
    implements _$SearchModelCopyWith<$Res> {
  __$SearchModelCopyWithImpl(
      _SearchModel _value, $Res Function(_SearchModel) _then)
      : super(_value, (v) => _then(v as _SearchModel));

  @override
  _SearchModel get _value => super._value as _SearchModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? searchCount = freezed,
    Object? useCount = freezed,
  }) {
    return _then(_SearchModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      searchCount: searchCount == freezed
          ? _value.searchCount
          : searchCount // ignore: cast_nullable_to_non_nullable
              as int,
      useCount: useCount == freezed
          ? _value.useCount
          : useCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchModel implements _SearchModel {
  _$_SearchModel(
      {required this.id,
      required this.name,
      @JsonKey(name: "search_count") required this.searchCount,
      @JsonKey(name: "use_count") required this.useCount});

  factory _$_SearchModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: "search_count")
  final int searchCount;
  @override
  @JsonKey(name: "use_count")
  final int useCount;

  @override
  String toString() {
    return 'SearchModel(id: $id, name: $name, searchCount: $searchCount, useCount: $useCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.searchCount, searchCount) &&
            const DeepCollectionEquality().equals(other.useCount, useCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(searchCount),
      const DeepCollectionEquality().hash(useCount));

  @JsonKey(ignore: true)
  @override
  _$SearchModelCopyWith<_SearchModel> get copyWith =>
      __$SearchModelCopyWithImpl<_SearchModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchModelToJson(this);
  }
}

abstract class _SearchModel implements SearchModel {
  factory _SearchModel(
      {required int id,
      required String name,
      @JsonKey(name: "search_count") required int searchCount,
      @JsonKey(name: "use_count") required int useCount}) = _$_SearchModel;

  factory _SearchModel.fromJson(Map<String, dynamic> json) =
      _$_SearchModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: "search_count")
  int get searchCount;
  @override
  @JsonKey(name: "use_count")
  int get useCount;
  @override
  @JsonKey(ignore: true)
  _$SearchModelCopyWith<_SearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}
