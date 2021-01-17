// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    name: json['name'] as String,
    vcardStatus: json['vcard_status'] as bool,
    image: json['image'] as String,
    moneySaved: (json['money_saved'] as num)?.toDouble(),
    cibilScore: (json['cibil_score'] as num)?.toDouble(),
    limit: (json['limit'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'name': instance.name,
      'vcard_status': instance.vcardStatus,
      'image': instance.image,
      'money_saved': instance.moneySaved,
      'cibil_score': instance.cibilScore,
      'limit': instance.limit,
    };
