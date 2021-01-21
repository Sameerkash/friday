import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friday/models/common/cards.response.dart';
part 'cards_list.response.freezed.dart';
part 'cards_list.response.g.dart';
@freezed
abstract class CardsList with _$CardsList {
  const factory CardsList({
    @JsonKey(name: '_id') String id,
    @JsonKey(name: 'cards') List<Card> cards,
  }) = _CardsList;

  factory CardsList.fromJson(Map<String, dynamic> json) =>
      _$CardsListFromJson(json);

  Map<String, dynamic> toJson() => _$_$_CardsListToJson(this);
}
