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
