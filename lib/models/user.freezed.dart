// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {String name,
      @JsonKey(name: 'vcard_status') bool vcardStatus,
      String image,
      @JsonKey(name: 'money_saved') double moneySaved,
      @JsonKey(name: 'cibil_score') double cibilScore,
      double limit}) {
    return _User(
      name: name,
      vcardStatus: vcardStatus,
      image: image,
      moneySaved: moneySaved,
      cibilScore: cibilScore,
      limit: limit,
    );
  }

// ignore: unused_element
  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get name;
  @JsonKey(name: 'vcard_status')
  bool get vcardStatus;
  String get image;
  @JsonKey(name: 'money_saved')
  double get moneySaved;
  @JsonKey(name: 'cibil_score')
  double get cibilScore;
  double get limit;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String name,
      @JsonKey(name: 'vcard_status') bool vcardStatus,
      String image,
      @JsonKey(name: 'money_saved') double moneySaved,
      @JsonKey(name: 'cibil_score') double cibilScore,
      double limit});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object name = freezed,
    Object vcardStatus = freezed,
    Object image = freezed,
    Object moneySaved = freezed,
    Object cibilScore = freezed,
    Object limit = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      vcardStatus:
          vcardStatus == freezed ? _value.vcardStatus : vcardStatus as bool,
      image: image == freezed ? _value.image : image as String,
      moneySaved:
          moneySaved == freezed ? _value.moneySaved : moneySaved as double,
      cibilScore:
          cibilScore == freezed ? _value.cibilScore : cibilScore as double,
      limit: limit == freezed ? _value.limit : limit as double,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      @JsonKey(name: 'vcard_status') bool vcardStatus,
      String image,
      @JsonKey(name: 'money_saved') double moneySaved,
      @JsonKey(name: 'cibil_score') double cibilScore,
      double limit});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object name = freezed,
    Object vcardStatus = freezed,
    Object image = freezed,
    Object moneySaved = freezed,
    Object cibilScore = freezed,
    Object limit = freezed,
  }) {
    return _then(_User(
      name: name == freezed ? _value.name : name as String,
      vcardStatus:
          vcardStatus == freezed ? _value.vcardStatus : vcardStatus as bool,
      image: image == freezed ? _value.image : image as String,
      moneySaved:
          moneySaved == freezed ? _value.moneySaved : moneySaved as double,
      cibilScore:
          cibilScore == freezed ? _value.cibilScore : cibilScore as double,
      limit: limit == freezed ? _value.limit : limit as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_User implements _User {
  const _$_User(
      {this.name,
      @JsonKey(name: 'vcard_status') this.vcardStatus,
      this.image,
      @JsonKey(name: 'money_saved') this.moneySaved,
      @JsonKey(name: 'cibil_score') this.cibilScore,
      this.limit});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'vcard_status')
  final bool vcardStatus;
  @override
  final String image;
  @override
  @JsonKey(name: 'money_saved')
  final double moneySaved;
  @override
  @JsonKey(name: 'cibil_score')
  final double cibilScore;
  @override
  final double limit;

  @override
  String toString() {
    return 'User(name: $name, vcardStatus: $vcardStatus, image: $image, moneySaved: $moneySaved, cibilScore: $cibilScore, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.vcardStatus, vcardStatus) ||
                const DeepCollectionEquality()
                    .equals(other.vcardStatus, vcardStatus)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.moneySaved, moneySaved) ||
                const DeepCollectionEquality()
                    .equals(other.moneySaved, moneySaved)) &&
            (identical(other.cibilScore, cibilScore) ||
                const DeepCollectionEquality()
                    .equals(other.cibilScore, cibilScore)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(vcardStatus) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(moneySaved) ^
      const DeepCollectionEquality().hash(cibilScore) ^
      const DeepCollectionEquality().hash(limit);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {String name,
      @JsonKey(name: 'vcard_status') bool vcardStatus,
      String image,
      @JsonKey(name: 'money_saved') double moneySaved,
      @JsonKey(name: 'cibil_score') double cibilScore,
      double limit}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'vcard_status')
  bool get vcardStatus;
  @override
  String get image;
  @override
  @JsonKey(name: 'money_saved')
  double get moneySaved;
  @override
  @JsonKey(name: 'cibil_score')
  double get cibilScore;
  @override
  double get limit;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith;
}
