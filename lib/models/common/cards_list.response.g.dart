// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cards_list.response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardsList _$_$_CardsListFromJson(Map<String, dynamic> json) {
  return _$_CardsList(
    id: json['_id'] as String,
    cards: (json['cards'] as List)
        ?.map(
            (e) => e == null ? null : Card.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_CardsListToJson(_$_CardsList instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'cards': instance.cards,
    };
