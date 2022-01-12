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

PostsModel _$PostsModelFromJson(Map<String, dynamic> json) {
  return _PostsModel.fromJson(json);
}

/// @nodoc
class _$PostsModelTearOff {
  const _$PostsModelTearOff();

  _PostsModel call(
      {required int id,
      required String title,
      String? heroimage,
      String? photo,
      required String link,
      String? company}) {
    return _PostsModel(
      id: id,
      title: title,
      heroimage: heroimage,
      photo: photo,
      link: link,
      company: company,
    );
  }

  PostsModel fromJson(Map<String, Object?> json) {
    return PostsModel.fromJson(json);
  }
}

/// @nodoc
const $PostsModel = _$PostsModelTearOff();

/// @nodoc
mixin _$PostsModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get heroimage => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsModelCopyWith<PostsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsModelCopyWith<$Res> {
  factory $PostsModelCopyWith(
          PostsModel value, $Res Function(PostsModel) then) =
      _$PostsModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String? heroimage,
      String? photo,
      String link,
      String? company});
}

/// @nodoc
class _$PostsModelCopyWithImpl<$Res> implements $PostsModelCopyWith<$Res> {
  _$PostsModelCopyWithImpl(this._value, this._then);

  final PostsModel _value;
  // ignore: unused_field
  final $Res Function(PostsModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? heroimage = freezed,
    Object? photo = freezed,
    Object? link = freezed,
    Object? company = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      heroimage: heroimage == freezed
          ? _value.heroimage
          : heroimage // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PostsModelCopyWith<$Res> implements $PostsModelCopyWith<$Res> {
  factory _$PostsModelCopyWith(
          _PostsModel value, $Res Function(_PostsModel) then) =
      __$PostsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String? heroimage,
      String? photo,
      String link,
      String? company});
}

/// @nodoc
class __$PostsModelCopyWithImpl<$Res> extends _$PostsModelCopyWithImpl<$Res>
    implements _$PostsModelCopyWith<$Res> {
  __$PostsModelCopyWithImpl(
      _PostsModel _value, $Res Function(_PostsModel) _then)
      : super(_value, (v) => _then(v as _PostsModel));

  @override
  _PostsModel get _value => super._value as _PostsModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? heroimage = freezed,
    Object? photo = freezed,
    Object? link = freezed,
    Object? company = freezed,
  }) {
    return _then(_PostsModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      heroimage: heroimage == freezed
          ? _value.heroimage
          : heroimage // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostsModel implements _PostsModel {
  _$_PostsModel(
      {required this.id,
      required this.title,
      this.heroimage,
      this.photo,
      required this.link,
      this.company});

  factory _$_PostsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostsModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? heroimage;
  @override
  final String? photo;
  @override
  final String link;
  @override
  final String? company;

  @override
  String toString() {
    return 'PostsModel(id: $id, title: $title, heroimage: $heroimage, photo: $photo, link: $link, company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostsModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.heroimage, heroimage) &&
            const DeepCollectionEquality().equals(other.photo, photo) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.company, company));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(heroimage),
      const DeepCollectionEquality().hash(photo),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(company));

  @JsonKey(ignore: true)
  @override
  _$PostsModelCopyWith<_PostsModel> get copyWith =>
      __$PostsModelCopyWithImpl<_PostsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostsModelToJson(this);
  }
}

abstract class _PostsModel implements PostsModel {
  factory _PostsModel(
      {required int id,
      required String title,
      String? heroimage,
      String? photo,
      required String link,
      String? company}) = _$_PostsModel;

  factory _PostsModel.fromJson(Map<String, dynamic> json) =
      _$_PostsModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get heroimage;
  @override
  String? get photo;
  @override
  String get link;
  @override
  String? get company;
  @override
  @JsonKey(ignore: true)
  _$PostsModelCopyWith<_PostsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

EventModel _$EventModelFromJson(Map<String, dynamic> json) {
  return _EventModel.fromJson(json);
}

/// @nodoc
class _$EventModelTearOff {
  const _$EventModelTearOff();

  _EventModel call(
      {required int id,
      required String title,
      required String link,
      required String photo,
      required String dcrate,
      required String dcprice,
      required String listprice,
      required int my_bookmark,
      required String? brand}) {
    return _EventModel(
      id: id,
      title: title,
      link: link,
      photo: photo,
      dcrate: dcrate,
      dcprice: dcprice,
      listprice: listprice,
      my_bookmark: my_bookmark,
      brand: brand,
    );
  }

  EventModel fromJson(Map<String, Object?> json) {
    return EventModel.fromJson(json);
  }
}

/// @nodoc
const $EventModel = _$EventModelTearOff();

/// @nodoc
mixin _$EventModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  String get dcrate => throw _privateConstructorUsedError;
  String get dcprice => throw _privateConstructorUsedError;
  String get listprice => throw _privateConstructorUsedError;
  int get my_bookmark => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventModelCopyWith<EventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventModelCopyWith<$Res> {
  factory $EventModelCopyWith(
          EventModel value, $Res Function(EventModel) then) =
      _$EventModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String link,
      String photo,
      String dcrate,
      String dcprice,
      String listprice,
      int my_bookmark,
      String? brand});
}

/// @nodoc
class _$EventModelCopyWithImpl<$Res> implements $EventModelCopyWith<$Res> {
  _$EventModelCopyWithImpl(this._value, this._then);

  final EventModel _value;
  // ignore: unused_field
  final $Res Function(EventModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? link = freezed,
    Object? photo = freezed,
    Object? dcrate = freezed,
    Object? dcprice = freezed,
    Object? listprice = freezed,
    Object? my_bookmark = freezed,
    Object? brand = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      dcrate: dcrate == freezed
          ? _value.dcrate
          : dcrate // ignore: cast_nullable_to_non_nullable
              as String,
      dcprice: dcprice == freezed
          ? _value.dcprice
          : dcprice // ignore: cast_nullable_to_non_nullable
              as String,
      listprice: listprice == freezed
          ? _value.listprice
          : listprice // ignore: cast_nullable_to_non_nullable
              as String,
      my_bookmark: my_bookmark == freezed
          ? _value.my_bookmark
          : my_bookmark // ignore: cast_nullable_to_non_nullable
              as int,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EventModelCopyWith<$Res> implements $EventModelCopyWith<$Res> {
  factory _$EventModelCopyWith(
          _EventModel value, $Res Function(_EventModel) then) =
      __$EventModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String link,
      String photo,
      String dcrate,
      String dcprice,
      String listprice,
      int my_bookmark,
      String? brand});
}

/// @nodoc
class __$EventModelCopyWithImpl<$Res> extends _$EventModelCopyWithImpl<$Res>
    implements _$EventModelCopyWith<$Res> {
  __$EventModelCopyWithImpl(
      _EventModel _value, $Res Function(_EventModel) _then)
      : super(_value, (v) => _then(v as _EventModel));

  @override
  _EventModel get _value => super._value as _EventModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? link = freezed,
    Object? photo = freezed,
    Object? dcrate = freezed,
    Object? dcprice = freezed,
    Object? listprice = freezed,
    Object? my_bookmark = freezed,
    Object? brand = freezed,
  }) {
    return _then(_EventModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      dcrate: dcrate == freezed
          ? _value.dcrate
          : dcrate // ignore: cast_nullable_to_non_nullable
              as String,
      dcprice: dcprice == freezed
          ? _value.dcprice
          : dcprice // ignore: cast_nullable_to_non_nullable
              as String,
      listprice: listprice == freezed
          ? _value.listprice
          : listprice // ignore: cast_nullable_to_non_nullable
              as String,
      my_bookmark: my_bookmark == freezed
          ? _value.my_bookmark
          : my_bookmark // ignore: cast_nullable_to_non_nullable
              as int,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventModel implements _EventModel {
  _$_EventModel(
      {required this.id,
      required this.title,
      required this.link,
      required this.photo,
      required this.dcrate,
      required this.dcprice,
      required this.listprice,
      required this.my_bookmark,
      required this.brand});

  factory _$_EventModel.fromJson(Map<String, dynamic> json) =>
      _$$_EventModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String link;
  @override
  final String photo;
  @override
  final String dcrate;
  @override
  final String dcprice;
  @override
  final String listprice;
  @override
  final int my_bookmark;
  @override
  final String? brand;

  @override
  String toString() {
    return 'EventModel(id: $id, title: $title, link: $link, photo: $photo, dcrate: $dcrate, dcprice: $dcprice, listprice: $listprice, my_bookmark: $my_bookmark, brand: $brand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.photo, photo) &&
            const DeepCollectionEquality().equals(other.dcrate, dcrate) &&
            const DeepCollectionEquality().equals(other.dcprice, dcprice) &&
            const DeepCollectionEquality().equals(other.listprice, listprice) &&
            const DeepCollectionEquality()
                .equals(other.my_bookmark, my_bookmark) &&
            const DeepCollectionEquality().equals(other.brand, brand));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(photo),
      const DeepCollectionEquality().hash(dcrate),
      const DeepCollectionEquality().hash(dcprice),
      const DeepCollectionEquality().hash(listprice),
      const DeepCollectionEquality().hash(my_bookmark),
      const DeepCollectionEquality().hash(brand));

  @JsonKey(ignore: true)
  @override
  _$EventModelCopyWith<_EventModel> get copyWith =>
      __$EventModelCopyWithImpl<_EventModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventModelToJson(this);
  }
}

abstract class _EventModel implements EventModel {
  factory _EventModel(
      {required int id,
      required String title,
      required String link,
      required String photo,
      required String dcrate,
      required String dcprice,
      required String listprice,
      required int my_bookmark,
      required String? brand}) = _$_EventModel;

  factory _EventModel.fromJson(Map<String, dynamic> json) =
      _$_EventModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get link;
  @override
  String get photo;
  @override
  String get dcrate;
  @override
  String get dcprice;
  @override
  String get listprice;
  @override
  int get my_bookmark;
  @override
  String? get brand;
  @override
  @JsonKey(ignore: true)
  _$EventModelCopyWith<_EventModel> get copyWith =>
      throw _privateConstructorUsedError;
}
