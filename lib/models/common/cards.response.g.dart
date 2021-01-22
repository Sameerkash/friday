// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cards.response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Card _$_$_CardFromJson(Map<String, dynamic> json) {
  return _$_Card(
    aesEncryptedCardNumber: json['aes_encrypted_card_number'] as String,
    cardLastFourDigits: json['card_last_four_digits'] as String,
    cardToken: json['card_token'] as int,
    nameOnCard: json['name_on_card'] as String,
    cardType: json['card_type'] as String,
    cardSubType: json['card_subType'] as String,
    cardCategory: json['card_category'] as String,
    binCategory: json['bin_category'] as String,
    binNumber: json['bin_number'] as String,
    issuingBank: json['issuing_bank'] as String,
    expirationMonth: json['expiration_month'] as String,
    expirationYear: json['expiration_year'] as String,
    ISOCode: json['ISO_code'] as String,
    cardRegulation: json['card_regulation'] as String,
    isDefault: json['is_default'] as bool,
    cardId: json['card_id'] as String,
  );
}

Map<String, dynamic> _$_$_CardToJson(_$_Card instance) => <String, dynamic>{
      'aes_encrypted_card_number': instance.aesEncryptedCardNumber,
      'card_last_four_digits': instance.cardLastFourDigits,
      'card_token': instance.cardToken,
      'name_on_card': instance.nameOnCard,
      'card_type': instance.cardType,
      'card_subType': instance.cardSubType,
      'card_category': instance.cardCategory,
      'bin_category': instance.binCategory,
      'bin_number': instance.binNumber,
      'issuing_bank': instance.issuingBank,
      'expiration_month': instance.expirationMonth,
      'expiration_year': instance.expirationYear,
      'ISO_code': instance.ISOCode,
      'card_regulation': instance.cardRegulation,
      'is_default': instance.isDefault,
      'card_id': instance.cardId,
    };
