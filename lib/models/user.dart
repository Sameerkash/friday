import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    String name,
    @JsonKey(name: 'vcard_status') bool vcardStatus,
    String image,
    @JsonKey(name: 'money_saved') double moneySaved,
    @JsonKey(name: 'cibil_score') double cibilScore,
    double limit,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$_$_UserToJson(this);
}
