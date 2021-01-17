// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'vcard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Vcard _$VcardFromJson(Map<String, dynamic> json) {
  return _Vcard.fromJson(json);
}

/// @nodoc
class _$VcardTearOff {
  const _$VcardTearOff();

// ignore: unused_element
  _Vcard call(
      {@JsonKey(name: 'vc_number') String vcNumber,
      @JsonKey(name: 'expiration_month') String expMonth,
      @JsonKey(name: 'expiration_year') String expYear,
      @JsonKey(name: 'CVV') String cvv,
      String bin,
      @JsonKey(name: 'last_four') String lastFour,
      @JsonKey(name: 'issuer_network') String issuerNetwork,
      @JsonKey(name: 'issuer_bank') String issuerBank}) {
    return _Vcard(
      vcNumber: vcNumber,
      expMonth: expMonth,
      expYear: expYear,
      cvv: cvv,
      bin: bin,
      lastFour: lastFour,
      issuerNetwork: issuerNetwork,
      issuerBank: issuerBank,
    );
  }

// ignore: unused_element
  Vcard fromJson(Map<String, Object> json) {
    return Vcard.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Vcard = _$VcardTearOff();

/// @nodoc
mixin _$Vcard {
  @JsonKey(name: 'vc_number')
  String get vcNumber;
  @JsonKey(name: 'expiration_month')
  String get expMonth;
  @JsonKey(name: 'expiration_year')
  String get expYear;
  @JsonKey(name: 'CVV')
  String get cvv;
  String get bin;
  @JsonKey(name: 'last_four')
  String get lastFour;
  @JsonKey(name: 'issuer_network')
  String get issuerNetwork;
  @JsonKey(name: 'issuer_bank')
  String get issuerBank;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $VcardCopyWith<Vcard> get copyWith;
}

/// @nodoc
abstract class $VcardCopyWith<$Res> {
  factory $VcardCopyWith(Vcard value, $Res Function(Vcard) then) =
      _$VcardCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'vc_number') String vcNumber,
      @JsonKey(name: 'expiration_month') String expMonth,
      @JsonKey(name: 'expiration_year') String expYear,
      @JsonKey(name: 'CVV') String cvv,
      String bin,
      @JsonKey(name: 'last_four') String lastFour,
      @JsonKey(name: 'issuer_network') String issuerNetwork,
      @JsonKey(name: 'issuer_bank') String issuerBank});
}

/// @nodoc
class _$VcardCopyWithImpl<$Res> implements $VcardCopyWith<$Res> {
  _$VcardCopyWithImpl(this._value, this._then);

  final Vcard _value;
  // ignore: unused_field
  final $Res Function(Vcard) _then;

  @override
  $Res call({
    Object vcNumber = freezed,
    Object expMonth = freezed,
    Object expYear = freezed,
    Object cvv = freezed,
    Object bin = freezed,
    Object lastFour = freezed,
    Object issuerNetwork = freezed,
    Object issuerBank = freezed,
  }) {
    return _then(_value.copyWith(
      vcNumber: vcNumber == freezed ? _value.vcNumber : vcNumber as String,
      expMonth: expMonth == freezed ? _value.expMonth : expMonth as String,
      expYear: expYear == freezed ? _value.expYear : expYear as String,
      cvv: cvv == freezed ? _value.cvv : cvv as String,
      bin: bin == freezed ? _value.bin : bin as String,
      lastFour: lastFour == freezed ? _value.lastFour : lastFour as String,
      issuerNetwork: issuerNetwork == freezed
          ? _value.issuerNetwork
          : issuerNetwork as String,
      issuerBank:
          issuerBank == freezed ? _value.issuerBank : issuerBank as String,
    ));
  }
}

/// @nodoc
abstract class _$VcardCopyWith<$Res> implements $VcardCopyWith<$Res> {
  factory _$VcardCopyWith(_Vcard value, $Res Function(_Vcard) then) =
      __$VcardCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'vc_number') String vcNumber,
      @JsonKey(name: 'expiration_month') String expMonth,
      @JsonKey(name: 'expiration_year') String expYear,
      @JsonKey(name: 'CVV') String cvv,
      String bin,
      @JsonKey(name: 'last_four') String lastFour,
      @JsonKey(name: 'issuer_network') String issuerNetwork,
      @JsonKey(name: 'issuer_bank') String issuerBank});
}

/// @nodoc
class __$VcardCopyWithImpl<$Res> extends _$VcardCopyWithImpl<$Res>
    implements _$VcardCopyWith<$Res> {
  __$VcardCopyWithImpl(_Vcard _value, $Res Function(_Vcard) _then)
      : super(_value, (v) => _then(v as _Vcard));

  @override
  _Vcard get _value => super._value as _Vcard;

  @override
  $Res call({
    Object vcNumber = freezed,
    Object expMonth = freezed,
    Object expYear = freezed,
    Object cvv = freezed,
    Object bin = freezed,
    Object lastFour = freezed,
    Object issuerNetwork = freezed,
    Object issuerBank = freezed,
  }) {
    return _then(_Vcard(
      vcNumber: vcNumber == freezed ? _value.vcNumber : vcNumber as String,
      expMonth: expMonth == freezed ? _value.expMonth : expMonth as String,
      expYear: expYear == freezed ? _value.expYear : expYear as String,
      cvv: cvv == freezed ? _value.cvv : cvv as String,
      bin: bin == freezed ? _value.bin : bin as String,
      lastFour: lastFour == freezed ? _value.lastFour : lastFour as String,
      issuerNetwork: issuerNetwork == freezed
          ? _value.issuerNetwork
          : issuerNetwork as String,
      issuerBank:
          issuerBank == freezed ? _value.issuerBank : issuerBank as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Vcard implements _Vcard {
  const _$_Vcard(
      {@JsonKey(name: 'vc_number') this.vcNumber,
      @JsonKey(name: 'expiration_month') this.expMonth,
      @JsonKey(name: 'expiration_year') this.expYear,
      @JsonKey(name: 'CVV') this.cvv,
      this.bin,
      @JsonKey(name: 'last_four') this.lastFour,
      @JsonKey(name: 'issuer_network') this.issuerNetwork,
      @JsonKey(name: 'issuer_bank') this.issuerBank});

  factory _$_Vcard.fromJson(Map<String, dynamic> json) =>
      _$_$_VcardFromJson(json);

  @override
  @JsonKey(name: 'vc_number')
  final String vcNumber;
  @override
  @JsonKey(name: 'expiration_month')
  final String expMonth;
  @override
  @JsonKey(name: 'expiration_year')
  final String expYear;
  @override
  @JsonKey(name: 'CVV')
  final String cvv;
  @override
  final String bin;
  @override
  @JsonKey(name: 'last_four')
  final String lastFour;
  @override
  @JsonKey(name: 'issuer_network')
  final String issuerNetwork;
  @override
  @JsonKey(name: 'issuer_bank')
  final String issuerBank;

  @override
  String toString() {
    return 'Vcard(vcNumber: $vcNumber, expMonth: $expMonth, expYear: $expYear, cvv: $cvv, bin: $bin, lastFour: $lastFour, issuerNetwork: $issuerNetwork, issuerBank: $issuerBank)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Vcard &&
            (identical(other.vcNumber, vcNumber) ||
                const DeepCollectionEquality()
                    .equals(other.vcNumber, vcNumber)) &&
            (identical(other.expMonth, expMonth) ||
                const DeepCollectionEquality()
                    .equals(other.expMonth, expMonth)) &&
            (identical(other.expYear, expYear) ||
                const DeepCollectionEquality()
                    .equals(other.expYear, expYear)) &&
            (identical(other.cvv, cvv) ||
                const DeepCollectionEquality().equals(other.cvv, cvv)) &&
            (identical(other.bin, bin) ||
                const DeepCollectionEquality().equals(other.bin, bin)) &&
            (identical(other.lastFour, lastFour) ||
                const DeepCollectionEquality()
                    .equals(other.lastFour, lastFour)) &&
            (identical(other.issuerNetwork, issuerNetwork) ||
                const DeepCollectionEquality()
                    .equals(other.issuerNetwork, issuerNetwork)) &&
            (identical(other.issuerBank, issuerBank) ||
                const DeepCollectionEquality()
                    .equals(other.issuerBank, issuerBank)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(vcNumber) ^
      const DeepCollectionEquality().hash(expMonth) ^
      const DeepCollectionEquality().hash(expYear) ^
      const DeepCollectionEquality().hash(cvv) ^
      const DeepCollectionEquality().hash(bin) ^
      const DeepCollectionEquality().hash(lastFour) ^
      const DeepCollectionEquality().hash(issuerNetwork) ^
      const DeepCollectionEquality().hash(issuerBank);

  @JsonKey(ignore: true)
  @override
  _$VcardCopyWith<_Vcard> get copyWith =>
      __$VcardCopyWithImpl<_Vcard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VcardToJson(this);
  }
}

abstract class _Vcard implements Vcard {
  const factory _Vcard(
      {@JsonKey(name: 'vc_number') String vcNumber,
      @JsonKey(name: 'expiration_month') String expMonth,
      @JsonKey(name: 'expiration_year') String expYear,
      @JsonKey(name: 'CVV') String cvv,
      String bin,
      @JsonKey(name: 'last_four') String lastFour,
      @JsonKey(name: 'issuer_network') String issuerNetwork,
      @JsonKey(name: 'issuer_bank') String issuerBank}) = _$_Vcard;

  factory _Vcard.fromJson(Map<String, dynamic> json) = _$_Vcard.fromJson;

  @override
  @JsonKey(name: 'vc_number')
  String get vcNumber;
  @override
  @JsonKey(name: 'expiration_month')
  String get expMonth;
  @override
  @JsonKey(name: 'expiration_year')
  String get expYear;
  @override
  @JsonKey(name: 'CVV')
  String get cvv;
  @override
  String get bin;
  @override
  @JsonKey(name: 'last_four')
  String get lastFour;
  @override
  @JsonKey(name: 'issuer_network')
  String get issuerNetwork;
  @override
  @JsonKey(name: 'issuer_bank')
  String get issuerBank;
  @override
  @JsonKey(ignore: true)
  _$VcardCopyWith<_Vcard> get copyWith;
}
