

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friday/models/vcard.dart';

import '../user.dart';

part 'user.response.freezed.dart';
part 'user.response.g.dart';
@freezed
abstract class LoginUserResponse with _$LoginUserResponse{
  const factory LoginUserResponse({
   @JsonKey(name: 'user_details') User userDetails,
   @JsonKey(name: 'v_card') Vcard vCard,
   @JsonKey(name: 'auth_token') String authToken,

  }) = _LoginUserResponse;

  factory LoginUserResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$_$_LoginUserResponseToJson(this);
}
