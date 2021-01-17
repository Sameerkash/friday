// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginUserResponse _$_$_LoginUserResponseFromJson(Map<String, dynamic> json) {
  return _$_LoginUserResponse(
    userDetails: json['user_details'] == null
        ? null
        : User.fromJson(json['user_details'] as Map<String, dynamic>),
    vCard: json['v_card'] == null
        ? null
        : Vcard.fromJson(json['v_card'] as Map<String, dynamic>),
    authToken: json['auth_token'] as String,
  );
}

Map<String, dynamic> _$_$_LoginUserResponseToJson(
        _$_LoginUserResponse instance) =>
    <String, dynamic>{
      'user_details': instance.userDetails,
      'v_card': instance.vCard,
      'auth_token': instance.authToken,
    };
