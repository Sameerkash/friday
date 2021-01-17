// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vcard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Vcard _$_$_VcardFromJson(Map<String, dynamic> json) {
  return _$_Vcard(
    vcNumber: json['vc_number'] as String,
    expMonth: json['expiration_month'] as String,
    expYear: json['expiration_year'] as String,
    cvv: json['CVV'] as String,
    bin: json['bin'] as String,
    lastFour: json['last_four'] as String,
    issuerNetwork: json['issuer_network'] as String,
    issuerBank: json['issuer_bank'] as String,
  );
}

Map<String, dynamic> _$_$_VcardToJson(_$_Vcard instance) => <String, dynamic>{
      'vc_number': instance.vcNumber,
      'expiration_month': instance.expMonth,
      'expiration_year': instance.expYear,
      'CVV': instance.cvv,
      'bin': instance.bin,
      'last_four': instance.lastFour,
      'issuer_network': instance.issuerNetwork,
      'issuer_bank': instance.issuerBank,
    };
