// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cards.response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Card _$CardFromJson(Map<String, dynamic> json) {
  return _Card.fromJson(json);
}

/// @nodoc
class _$CardTearOff {
  const _$CardTearOff();

// ignore: unused_element
  _Card call(
      {@JsonKey(name: 'aes_encrypted_card_number')
          String aesEncryptedCardNumber,
      @JsonKey(name: 'card_last_four_digits')
          String cardLastFourDigits,
      @JsonKey(name: 'card_token')
          int cardToken,
      @JsonKey(name: 'card_type')
          String cardType,
      @JsonKey(name: 'card_subType')
          String cardSubType,
      @JsonKey(name: 'bin_category')
          String binCategory,
      @JsonKey(name: 'bin_number')
          String binNumber,
      @JsonKey(name: 'issuing_bank')
          String issuingBank,
      @JsonKey(name: 'expiration_month')
          String expirationMonth,
      @JsonKey(name: 'ISO_code')
          String ISOCode,
      @JsonKey(name: 'card_regulation')
          String cardRegulation,
      @JsonKey(name: 'is_default')
          bool isDefault,
      @JsonKey(name: 'card_id')
          String cardId}) {
    return _Card(
      aesEncryptedCardNumber: aesEncryptedCardNumber,
      cardLastFourDigits: cardLastFourDigits,
      cardToken: cardToken,
      cardType: cardType,
      cardSubType: cardSubType,
      binCategory: binCategory,
      binNumber: binNumber,
      issuingBank: issuingBank,
      expirationMonth: expirationMonth,
      ISOCode: ISOCode,
      cardRegulation: cardRegulation,
      isDefault: isDefault,
      cardId: cardId,
    );
  }

// ignore: unused_element
  Card fromJson(Map<String, Object> json) {
    return Card.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Card = _$CardTearOff();

/// @nodoc
mixin _$Card {
  @JsonKey(name: 'aes_encrypted_card_number')
  String get aesEncryptedCardNumber;
  @JsonKey(name: 'card_last_four_digits')
  String get cardLastFourDigits;
  @JsonKey(name: 'card_token')
  int get cardToken;
  @JsonKey(name: 'card_type')
  String get cardType;
  @JsonKey(name: 'card_subType')
  String get cardSubType;
  @JsonKey(name: 'bin_category')
  String get binCategory;
  @JsonKey(name: 'bin_number')
  String get binNumber;
  @JsonKey(name: 'issuing_bank')
  String get issuingBank;
  @JsonKey(name: 'expiration_month')
  String get expirationMonth;
  @JsonKey(name: 'ISO_code')
  String get ISOCode;
  @JsonKey(name: 'card_regulation')
  String get cardRegulation;
  @JsonKey(name: 'is_default')
  bool get isDefault;
  @JsonKey(name: 'card_id')
  String get cardId;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CardCopyWith<Card> get copyWith;
}

/// @nodoc
abstract class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) then) =
      _$CardCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'aes_encrypted_card_number')
          String aesEncryptedCardNumber,
      @JsonKey(name: 'card_last_four_digits')
          String cardLastFourDigits,
      @JsonKey(name: 'card_token')
          int cardToken,
      @JsonKey(name: 'card_type')
          String cardType,
      @JsonKey(name: 'card_subType')
          String cardSubType,
      @JsonKey(name: 'bin_category')
          String binCategory,
      @JsonKey(name: 'bin_number')
          String binNumber,
      @JsonKey(name: 'issuing_bank')
          String issuingBank,
      @JsonKey(name: 'expiration_month')
          String expirationMonth,
      @JsonKey(name: 'ISO_code')
          String ISOCode,
      @JsonKey(name: 'card_regulation')
          String cardRegulation,
      @JsonKey(name: 'is_default')
          bool isDefault,
      @JsonKey(name: 'card_id')
          String cardId});
}

/// @nodoc
class _$CardCopyWithImpl<$Res> implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._value, this._then);

  final Card _value;
  // ignore: unused_field
  final $Res Function(Card) _then;

  @override
  $Res call({
    Object aesEncryptedCardNumber = freezed,
    Object cardLastFourDigits = freezed,
    Object cardToken = freezed,
    Object cardType = freezed,
    Object cardSubType = freezed,
    Object binCategory = freezed,
    Object binNumber = freezed,
    Object issuingBank = freezed,
    Object expirationMonth = freezed,
    Object ISOCode = freezed,
    Object cardRegulation = freezed,
    Object isDefault = freezed,
    Object cardId = freezed,
  }) {
    return _then(_value.copyWith(
      aesEncryptedCardNumber: aesEncryptedCardNumber == freezed
          ? _value.aesEncryptedCardNumber
          : aesEncryptedCardNumber as String,
      cardLastFourDigits: cardLastFourDigits == freezed
          ? _value.cardLastFourDigits
          : cardLastFourDigits as String,
      cardToken: cardToken == freezed ? _value.cardToken : cardToken as int,
      cardType: cardType == freezed ? _value.cardType : cardType as String,
      cardSubType:
          cardSubType == freezed ? _value.cardSubType : cardSubType as String,
      binCategory:
          binCategory == freezed ? _value.binCategory : binCategory as String,
      binNumber: binNumber == freezed ? _value.binNumber : binNumber as String,
      issuingBank:
          issuingBank == freezed ? _value.issuingBank : issuingBank as String,
      expirationMonth: expirationMonth == freezed
          ? _value.expirationMonth
          : expirationMonth as String,
      ISOCode: ISOCode == freezed ? _value.ISOCode : ISOCode as String,
      cardRegulation: cardRegulation == freezed
          ? _value.cardRegulation
          : cardRegulation as String,
      isDefault: isDefault == freezed ? _value.isDefault : isDefault as bool,
      cardId: cardId == freezed ? _value.cardId : cardId as String,
    ));
  }
}

/// @nodoc
abstract class _$CardCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$CardCopyWith(_Card value, $Res Function(_Card) then) =
      __$CardCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'aes_encrypted_card_number')
          String aesEncryptedCardNumber,
      @JsonKey(name: 'card_last_four_digits')
          String cardLastFourDigits,
      @JsonKey(name: 'card_token')
          int cardToken,
      @JsonKey(name: 'card_type')
          String cardType,
      @JsonKey(name: 'card_subType')
          String cardSubType,
      @JsonKey(name: 'bin_category')
          String binCategory,
      @JsonKey(name: 'bin_number')
          String binNumber,
      @JsonKey(name: 'issuing_bank')
          String issuingBank,
      @JsonKey(name: 'expiration_month')
          String expirationMonth,
      @JsonKey(name: 'ISO_code')
          String ISOCode,
      @JsonKey(name: 'card_regulation')
          String cardRegulation,
      @JsonKey(name: 'is_default')
          bool isDefault,
      @JsonKey(name: 'card_id')
          String cardId});
}

/// @nodoc
class __$CardCopyWithImpl<$Res> extends _$CardCopyWithImpl<$Res>
    implements _$CardCopyWith<$Res> {
  __$CardCopyWithImpl(_Card _value, $Res Function(_Card) _then)
      : super(_value, (v) => _then(v as _Card));

  @override
  _Card get _value => super._value as _Card;

  @override
  $Res call({
    Object aesEncryptedCardNumber = freezed,
    Object cardLastFourDigits = freezed,
    Object cardToken = freezed,
    Object cardType = freezed,
    Object cardSubType = freezed,
    Object binCategory = freezed,
    Object binNumber = freezed,
    Object issuingBank = freezed,
    Object expirationMonth = freezed,
    Object ISOCode = freezed,
    Object cardRegulation = freezed,
    Object isDefault = freezed,
    Object cardId = freezed,
  }) {
    return _then(_Card(
      aesEncryptedCardNumber: aesEncryptedCardNumber == freezed
          ? _value.aesEncryptedCardNumber
          : aesEncryptedCardNumber as String,
      cardLastFourDigits: cardLastFourDigits == freezed
          ? _value.cardLastFourDigits
          : cardLastFourDigits as String,
      cardToken: cardToken == freezed ? _value.cardToken : cardToken as int,
      cardType: cardType == freezed ? _value.cardType : cardType as String,
      cardSubType:
          cardSubType == freezed ? _value.cardSubType : cardSubType as String,
      binCategory:
          binCategory == freezed ? _value.binCategory : binCategory as String,
      binNumber: binNumber == freezed ? _value.binNumber : binNumber as String,
      issuingBank:
          issuingBank == freezed ? _value.issuingBank : issuingBank as String,
      expirationMonth: expirationMonth == freezed
          ? _value.expirationMonth
          : expirationMonth as String,
      ISOCode: ISOCode == freezed ? _value.ISOCode : ISOCode as String,
      cardRegulation: cardRegulation == freezed
          ? _value.cardRegulation
          : cardRegulation as String,
      isDefault: isDefault == freezed ? _value.isDefault : isDefault as bool,
      cardId: cardId == freezed ? _value.cardId : cardId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Card implements _Card {
  const _$_Card(
      {@JsonKey(name: 'aes_encrypted_card_number') this.aesEncryptedCardNumber,
      @JsonKey(name: 'card_last_four_digits') this.cardLastFourDigits,
      @JsonKey(name: 'card_token') this.cardToken,
      @JsonKey(name: 'card_type') this.cardType,
      @JsonKey(name: 'card_subType') this.cardSubType,
      @JsonKey(name: 'bin_category') this.binCategory,
      @JsonKey(name: 'bin_number') this.binNumber,
      @JsonKey(name: 'issuing_bank') this.issuingBank,
      @JsonKey(name: 'expiration_month') this.expirationMonth,
      @JsonKey(name: 'ISO_code') this.ISOCode,
      @JsonKey(name: 'card_regulation') this.cardRegulation,
      @JsonKey(name: 'is_default') this.isDefault,
      @JsonKey(name: 'card_id') this.cardId});

  factory _$_Card.fromJson(Map<String, dynamic> json) =>
      _$_$_CardFromJson(json);

  @override
  @JsonKey(name: 'aes_encrypted_card_number')
  final String aesEncryptedCardNumber;
  @override
  @JsonKey(name: 'card_last_four_digits')
  final String cardLastFourDigits;
  @override
  @JsonKey(name: 'card_token')
  final int cardToken;
  @override
  @JsonKey(name: 'card_type')
  final String cardType;
  @override
  @JsonKey(name: 'card_subType')
  final String cardSubType;
  @override
  @JsonKey(name: 'bin_category')
  final String binCategory;
  @override
  @JsonKey(name: 'bin_number')
  final String binNumber;
  @override
  @JsonKey(name: 'issuing_bank')
  final String issuingBank;
  @override
  @JsonKey(name: 'expiration_month')
  final String expirationMonth;
  @override
  @JsonKey(name: 'ISO_code')
  final String ISOCode;
  @override
  @JsonKey(name: 'card_regulation')
  final String cardRegulation;
  @override
  @JsonKey(name: 'is_default')
  final bool isDefault;
  @override
  @JsonKey(name: 'card_id')
  final String cardId;

  @override
  String toString() {
    return 'Card(aesEncryptedCardNumber: $aesEncryptedCardNumber, cardLastFourDigits: $cardLastFourDigits, cardToken: $cardToken, cardType: $cardType, cardSubType: $cardSubType, binCategory: $binCategory, binNumber: $binNumber, issuingBank: $issuingBank, expirationMonth: $expirationMonth, ISOCode: $ISOCode, cardRegulation: $cardRegulation, isDefault: $isDefault, cardId: $cardId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Card &&
            (identical(other.aesEncryptedCardNumber, aesEncryptedCardNumber) ||
                const DeepCollectionEquality().equals(
                    other.aesEncryptedCardNumber, aesEncryptedCardNumber)) &&
            (identical(other.cardLastFourDigits, cardLastFourDigits) ||
                const DeepCollectionEquality()
                    .equals(other.cardLastFourDigits, cardLastFourDigits)) &&
            (identical(other.cardToken, cardToken) ||
                const DeepCollectionEquality()
                    .equals(other.cardToken, cardToken)) &&
            (identical(other.cardType, cardType) ||
                const DeepCollectionEquality()
                    .equals(other.cardType, cardType)) &&
            (identical(other.cardSubType, cardSubType) ||
                const DeepCollectionEquality()
                    .equals(other.cardSubType, cardSubType)) &&
            (identical(other.binCategory, binCategory) ||
                const DeepCollectionEquality()
                    .equals(other.binCategory, binCategory)) &&
            (identical(other.binNumber, binNumber) ||
                const DeepCollectionEquality()
                    .equals(other.binNumber, binNumber)) &&
            (identical(other.issuingBank, issuingBank) ||
                const DeepCollectionEquality()
                    .equals(other.issuingBank, issuingBank)) &&
            (identical(other.expirationMonth, expirationMonth) ||
                const DeepCollectionEquality()
                    .equals(other.expirationMonth, expirationMonth)) &&
            (identical(other.ISOCode, ISOCode) ||
                const DeepCollectionEquality()
                    .equals(other.ISOCode, ISOCode)) &&
            (identical(other.cardRegulation, cardRegulation) ||
                const DeepCollectionEquality()
                    .equals(other.cardRegulation, cardRegulation)) &&
            (identical(other.isDefault, isDefault) ||
                const DeepCollectionEquality()
                    .equals(other.isDefault, isDefault)) &&
            (identical(other.cardId, cardId) ||
                const DeepCollectionEquality().equals(other.cardId, cardId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(aesEncryptedCardNumber) ^
      const DeepCollectionEquality().hash(cardLastFourDigits) ^
      const DeepCollectionEquality().hash(cardToken) ^
      const DeepCollectionEquality().hash(cardType) ^
      const DeepCollectionEquality().hash(cardSubType) ^
      const DeepCollectionEquality().hash(binCategory) ^
      const DeepCollectionEquality().hash(binNumber) ^
      const DeepCollectionEquality().hash(issuingBank) ^
      const DeepCollectionEquality().hash(expirationMonth) ^
      const DeepCollectionEquality().hash(ISOCode) ^
      const DeepCollectionEquality().hash(cardRegulation) ^
      const DeepCollectionEquality().hash(isDefault) ^
      const DeepCollectionEquality().hash(cardId);

  @JsonKey(ignore: true)
  @override
  _$CardCopyWith<_Card> get copyWith =>
      __$CardCopyWithImpl<_Card>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CardToJson(this);
  }
}

abstract class _Card implements Card {
  const factory _Card(
      {@JsonKey(name: 'aes_encrypted_card_number')
          String aesEncryptedCardNumber,
      @JsonKey(name: 'card_last_four_digits')
          String cardLastFourDigits,
      @JsonKey(name: 'card_token')
          int cardToken,
      @JsonKey(name: 'card_type')
          String cardType,
      @JsonKey(name: 'card_subType')
          String cardSubType,
      @JsonKey(name: 'bin_category')
          String binCategory,
      @JsonKey(name: 'bin_number')
          String binNumber,
      @JsonKey(name: 'issuing_bank')
          String issuingBank,
      @JsonKey(name: 'expiration_month')
          String expirationMonth,
      @JsonKey(name: 'ISO_code')
          String ISOCode,
      @JsonKey(name: 'card_regulation')
          String cardRegulation,
      @JsonKey(name: 'is_default')
          bool isDefault,
      @JsonKey(name: 'card_id')
          String cardId}) = _$_Card;

  factory _Card.fromJson(Map<String, dynamic> json) = _$_Card.fromJson;

  @override
  @JsonKey(name: 'aes_encrypted_card_number')
  String get aesEncryptedCardNumber;
  @override
  @JsonKey(name: 'card_last_four_digits')
  String get cardLastFourDigits;
  @override
  @JsonKey(name: 'card_token')
  int get cardToken;
  @override
  @JsonKey(name: 'card_type')
  String get cardType;
  @override
  @JsonKey(name: 'card_subType')
  String get cardSubType;
  @override
  @JsonKey(name: 'bin_category')
  String get binCategory;
  @override
  @JsonKey(name: 'bin_number')
  String get binNumber;
  @override
  @JsonKey(name: 'issuing_bank')
  String get issuingBank;
  @override
  @JsonKey(name: 'expiration_month')
  String get expirationMonth;
  @override
  @JsonKey(name: 'ISO_code')
  String get ISOCode;
  @override
  @JsonKey(name: 'card_regulation')
  String get cardRegulation;
  @override
  @JsonKey(name: 'is_default')
  bool get isDefault;
  @override
  @JsonKey(name: 'card_id')
  String get cardId;
  @override
  @JsonKey(ignore: true)
  _$CardCopyWith<_Card> get copyWith;
}
