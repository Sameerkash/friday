// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cards_list.response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CardsList _$CardsListFromJson(Map<String, dynamic> json) {
  return _CardsList.fromJson(json);
}

/// @nodoc
class _$CardsListTearOff {
  const _$CardsListTearOff();

// ignore: unused_element
  _CardsList call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'cards') List<Card> cards}) {
    return _CardsList(
      id: id,
      cards: cards,
    );
  }

// ignore: unused_element
  CardsList fromJson(Map<String, Object> json) {
    return CardsList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CardsList = _$CardsListTearOff();

/// @nodoc
mixin _$CardsList {
  @JsonKey(name: '_id')
  String get id;
  @JsonKey(name: 'cards')
  List<Card> get cards;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CardsListCopyWith<CardsList> get copyWith;
}

/// @nodoc
abstract class $CardsListCopyWith<$Res> {
  factory $CardsListCopyWith(CardsList value, $Res Function(CardsList) then) =
      _$CardsListCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'cards') List<Card> cards});
}

/// @nodoc
class _$CardsListCopyWithImpl<$Res> implements $CardsListCopyWith<$Res> {
  _$CardsListCopyWithImpl(this._value, this._then);

  final CardsList _value;
  // ignore: unused_field
  final $Res Function(CardsList) _then;

  @override
  $Res call({
    Object id = freezed,
    Object cards = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      cards: cards == freezed ? _value.cards : cards as List<Card>,
    ));
  }
}

/// @nodoc
abstract class _$CardsListCopyWith<$Res> implements $CardsListCopyWith<$Res> {
  factory _$CardsListCopyWith(
          _CardsList value, $Res Function(_CardsList) then) =
      __$CardsListCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'cards') List<Card> cards});
}

/// @nodoc
class __$CardsListCopyWithImpl<$Res> extends _$CardsListCopyWithImpl<$Res>
    implements _$CardsListCopyWith<$Res> {
  __$CardsListCopyWithImpl(_CardsList _value, $Res Function(_CardsList) _then)
      : super(_value, (v) => _then(v as _CardsList));

  @override
  _CardsList get _value => super._value as _CardsList;

  @override
  $Res call({
    Object id = freezed,
    Object cards = freezed,
  }) {
    return _then(_CardsList(
      id: id == freezed ? _value.id : id as String,
      cards: cards == freezed ? _value.cards : cards as List<Card>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CardsList implements _CardsList {
  const _$_CardsList(
      {@JsonKey(name: '_id') this.id, @JsonKey(name: 'cards') this.cards});

  factory _$_CardsList.fromJson(Map<String, dynamic> json) =>
      _$_$_CardsListFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'cards')
  final List<Card> cards;

  @override
  String toString() {
    return 'CardsList(id: $id, cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardsList &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(cards);

  @JsonKey(ignore: true)
  @override
  _$CardsListCopyWith<_CardsList> get copyWith =>
      __$CardsListCopyWithImpl<_CardsList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CardsListToJson(this);
  }
}

abstract class _CardsList implements CardsList {
  const factory _CardsList(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'cards') List<Card> cards}) = _$_CardsList;

  factory _CardsList.fromJson(Map<String, dynamic> json) =
      _$_CardsList.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'cards')
  List<Card> get cards;
  @override
  @JsonKey(ignore: true)
  _$CardsListCopyWith<_CardsList> get copyWith;
}
