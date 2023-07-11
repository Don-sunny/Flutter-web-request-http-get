// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'n_umber_fact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NUmberFact _$NUmberFactFromJson(Map<String, dynamic> json) => NUmberFact(
      triviaText: json['text'] as String?,
      number: json['number'] as int?,
      found: json['found'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$NUmberFactToJson(NUmberFact instance) =>
    <String, dynamic>{
      'text': instance.triviaText,
      'number': instance.number,
      'found': instance.found,
      'type': instance.type,
    };
