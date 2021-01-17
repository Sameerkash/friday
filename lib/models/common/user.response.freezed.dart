// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LoginUserResponse _$LoginUserResponseFromJson(Map<String, dynamic> json) {
  return _LoginUserResponse.fromJson(json);
}

/// @nodoc
class _$LoginUserResponseTearOff {
  const _$LoginUserResponseTearOff();

// ignore: unused_element
  _LoginUserResponse call(
      {@JsonKey(name: 'user_details') User userDetails,
      @JsonKey(name: 'v_card') Vcard vCard,
      @JsonKey(name: 'auth_token') String authToken}) {
    return _LoginUserResponse(
      userDetails: userDetails,
      vCard: vCard,
      authToken: authToken,
    );
  }

// ignore: unused_element
  LoginUserResponse fromJson(Map<String, Object> json) {
    return LoginUserResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LoginUserResponse = _$LoginUserResponseTearOff();

/// @nodoc
mixin _$LoginUserResponse {
  @JsonKey(name: 'user_details')
  User get userDetails;
  @JsonKey(name: 'v_card')
  Vcard get vCard;
  @JsonKey(name: 'auth_token')
  String get authToken;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LoginUserResponseCopyWith<LoginUserResponse> get copyWith;
}

/// @nodoc
abstract class $LoginUserResponseCopyWith<$Res> {
  factory $LoginUserResponseCopyWith(
          LoginUserResponse value, $Res Function(LoginUserResponse) then) =
      _$LoginUserResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'user_details') User userDetails,
      @JsonKey(name: 'v_card') Vcard vCard,
      @JsonKey(name: 'auth_token') String authToken});

  $UserCopyWith<$Res> get userDetails;
  $VcardCopyWith<$Res> get vCard;
}

/// @nodoc
class _$LoginUserResponseCopyWithImpl<$Res>
    implements $LoginUserResponseCopyWith<$Res> {
  _$LoginUserResponseCopyWithImpl(this._value, this._then);

  final LoginUserResponse _value;
  // ignore: unused_field
  final $Res Function(LoginUserResponse) _then;

  @override
  $Res call({
    Object userDetails = freezed,
    Object vCard = freezed,
    Object authToken = freezed,
  }) {
    return _then(_value.copyWith(
      userDetails:
          userDetails == freezed ? _value.userDetails : userDetails as User,
      vCard: vCard == freezed ? _value.vCard : vCard as Vcard,
      authToken: authToken == freezed ? _value.authToken : authToken as String,
    ));
  }

  @override
  $UserCopyWith<$Res> get userDetails {
    if (_value.userDetails == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.userDetails, (value) {
      return _then(_value.copyWith(userDetails: value));
    });
  }

  @override
  $VcardCopyWith<$Res> get vCard {
    if (_value.vCard == null) {
      return null;
    }
    return $VcardCopyWith<$Res>(_value.vCard, (value) {
      return _then(_value.copyWith(vCard: value));
    });
  }
}

/// @nodoc
abstract class _$LoginUserResponseCopyWith<$Res>
    implements $LoginUserResponseCopyWith<$Res> {
  factory _$LoginUserResponseCopyWith(
          _LoginUserResponse value, $Res Function(_LoginUserResponse) then) =
      __$LoginUserResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'user_details') User userDetails,
      @JsonKey(name: 'v_card') Vcard vCard,
      @JsonKey(name: 'auth_token') String authToken});

  @override
  $UserCopyWith<$Res> get userDetails;
  @override
  $VcardCopyWith<$Res> get vCard;
}

/// @nodoc
class __$LoginUserResponseCopyWithImpl<$Res>
    extends _$LoginUserResponseCopyWithImpl<$Res>
    implements _$LoginUserResponseCopyWith<$Res> {
  __$LoginUserResponseCopyWithImpl(
      _LoginUserResponse _value, $Res Function(_LoginUserResponse) _then)
      : super(_value, (v) => _then(v as _LoginUserResponse));

  @override
  _LoginUserResponse get _value => super._value as _LoginUserResponse;

  @override
  $Res call({
    Object userDetails = freezed,
    Object vCard = freezed,
    Object authToken = freezed,
  }) {
    return _then(_LoginUserResponse(
      userDetails:
          userDetails == freezed ? _value.userDetails : userDetails as User,
      vCard: vCard == freezed ? _value.vCard : vCard as Vcard,
      authToken: authToken == freezed ? _value.authToken : authToken as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LoginUserResponse implements _LoginUserResponse {
  const _$_LoginUserResponse(
      {@JsonKey(name: 'user_details') this.userDetails,
      @JsonKey(name: 'v_card') this.vCard,
      @JsonKey(name: 'auth_token') this.authToken});

  factory _$_LoginUserResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginUserResponseFromJson(json);

  @override
  @JsonKey(name: 'user_details')
  final User userDetails;
  @override
  @JsonKey(name: 'v_card')
  final Vcard vCard;
  @override
  @JsonKey(name: 'auth_token')
  final String authToken;

  @override
  String toString() {
    return 'LoginUserResponse(userDetails: $userDetails, vCard: $vCard, authToken: $authToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginUserResponse &&
            (identical(other.userDetails, userDetails) ||
                const DeepCollectionEquality()
                    .equals(other.userDetails, userDetails)) &&
            (identical(other.vCard, vCard) ||
                const DeepCollectionEquality().equals(other.vCard, vCard)) &&
            (identical(other.authToken, authToken) ||
                const DeepCollectionEquality()
                    .equals(other.authToken, authToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userDetails) ^
      const DeepCollectionEquality().hash(vCard) ^
      const DeepCollectionEquality().hash(authToken);

  @JsonKey(ignore: true)
  @override
  _$LoginUserResponseCopyWith<_LoginUserResponse> get copyWith =>
      __$LoginUserResponseCopyWithImpl<_LoginUserResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginUserResponseToJson(this);
  }
}

abstract class _LoginUserResponse implements LoginUserResponse {
  const factory _LoginUserResponse(
      {@JsonKey(name: 'user_details') User userDetails,
      @JsonKey(name: 'v_card') Vcard vCard,
      @JsonKey(name: 'auth_token') String authToken}) = _$_LoginUserResponse;

  factory _LoginUserResponse.fromJson(Map<String, dynamic> json) =
      _$_LoginUserResponse.fromJson;

  @override
  @JsonKey(name: 'user_details')
  User get userDetails;
  @override
  @JsonKey(name: 'v_card')
  Vcard get vCard;
  @override
  @JsonKey(name: 'auth_token')
  String get authToken;
  @override
  @JsonKey(ignore: true)
  _$LoginUserResponseCopyWith<_LoginUserResponse> get copyWith;
}
