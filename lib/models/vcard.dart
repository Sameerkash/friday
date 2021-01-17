import 'package:freezed_annotation/freezed_annotation.dart';
part 'vcard.freezed.dart';
part 'vcard.g.dart';
@freezed
abstract class Vcard with _$Vcard {
  const factory Vcard({
    @JsonKey(name: 'vc_number') String vcNumber,
    @JsonKey(name: 'expiration_month') String expMonth,
    @JsonKey(name: 'expiration_year') String expYear,
    @JsonKey(name: 'CVV') String cvv,
    String bin,
    @JsonKey(name: 'last_four') String lastFour,
    @JsonKey(name: 'issuer_network') String issuerNetwork,
    @JsonKey(name: 'issuer_bank') String issuerBank,
  }) = _Vcard;

  factory Vcard.fromJson(Map<String, dynamic> json) =>
      _$VcardFromJson(json);

  Map<String, dynamic> toJson() => _$_$_VcardToJson(this);
}
