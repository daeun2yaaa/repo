// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchModel _$$_SearchModelFromJson(Map<String, dynamic> json) =>
    _$_SearchModel(
      id: json['id'] as int,
      name: json['name'] as String,
      searchCount: json['search_count'] as int,
      useCount: json['use_count'] as int,
    );

Map<String, dynamic> _$$_SearchModelToJson(_$_SearchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'search_count': instance.searchCount,
      'use_count': instance.useCount,
    };

_$_PostsModel _$$_PostsModelFromJson(Map<String, dynamic> json) =>
    _$_PostsModel(
      id: json['id'] as int,
      title: json['title'] as String,
      heroimage: json['heroimage'] as String?,
      photo: json['photo'] as String?,
      link: json['link'] as String,
      company: json['company'] as String?,
    );

Map<String, dynamic> _$$_PostsModelToJson(_$_PostsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'heroimage': instance.heroimage,
      'photo': instance.photo,
      'link': instance.link,
      'company': instance.company,
    };

_$_EventModel _$$_EventModelFromJson(Map<String, dynamic> json) =>
    _$_EventModel(
      id: json['id'] as int,
      title: json['title'] as String,
      link: json['link'] as String,
      photo: json['photo'] as String,
      dcrate: json['dcrate'] as String,
      dcprice: json['dcprice'] as String,
      listprice: json['listprice'] as String,
      my_bookmark: json['my_bookmark'] as int,
      brand: json['brand'] as String?,
    );

Map<String, dynamic> _$$_EventModelToJson(_$_EventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'link': instance.link,
      'photo': instance.photo,
      'dcrate': instance.dcrate,
      'dcprice': instance.dcprice,
      'listprice': instance.listprice,
      'my_bookmark': instance.my_bookmark,
      'brand': instance.brand,
    };
