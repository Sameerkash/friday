import 'package:freezed_annotation/freezed_annotation.dart';
part 'cards.response.freezed.dart';
part 'cards.response.g.dart';
@freezed
abstract class Card with _$Card {
  const factory Card({
    @JsonKey(name: 'aes_encrypted_card_number') String aesEncryptedCardNumber,
    @JsonKey(name: 'card_last_four_digits') String cardLastFourDigits,
    @JsonKey(name: 'card_token') int cardToken,
    @JsonKey(name: 'card_type') String cardType,
    @JsonKey(name: 'card_subType') String cardSubType,
    @JsonKey(name: 'bin_category') String binCategory,
    @JsonKey(name: 'bin_number') String binNumber,
    @JsonKey(name: 'issuing_bank') String issuingBank,
    @JsonKey(name: 'expiration_month') String expirationMonth,
    @JsonKey(name: 'ISO_code') String ISOCode,
    @JsonKey(name: 'card_regulation') String cardRegulation,
    @JsonKey(name: 'is_default') bool isDefault,
    @JsonKey(name: 'card_id') String cardId
  }) = _Card;

  factory Card.fromJson(Map<String, dynamic> json) =>
      _$CardFromJson(json);

  Map<String, dynamic> toJson() => _$_$_CardToJson(this);
}
