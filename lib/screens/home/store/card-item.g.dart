// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card-item.dart';

CardItem _$CardItemFromJson(Map<String, dynamic> json) {
  return CardItem(
    json['name'] as String,
    json['cover_url'] as String,
    json['game_name'] as String,
  );
}

Map<String, dynamic> _$CardItemToJson(CardItem instance) => <String, dynamic>{
      'name': instance.name,
      'cover_url': instance.cover_url,
      'game_name': instance.game_name
    };
// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CardItem on _CardItem, Store {
  final _$nameAtom = Atom(name: '_CardItem.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$cover_urlAtom = Atom(name: '_CardItem.cover_url');

  @override
  String get cover_url {
    _$cover_urlAtom.context.enforceReadPolicy(_$cover_urlAtom);
    _$cover_urlAtom.reportObserved();
    return super.cover_url;
  }

  @override
  set cover_url(String value) {
    _$cover_urlAtom.context.conditionallyRunInAction(() {
      super.cover_url = value;
      _$cover_urlAtom.reportChanged();
    }, _$cover_urlAtom, name: '${_$cover_urlAtom.name}_set');
  }

  final _$game_nameAtom = Atom(name: '_CardItem.game_name');

  @override
  String get game_name {
    _$game_nameAtom.context.enforceReadPolicy(_$game_nameAtom);
    _$game_nameAtom.reportObserved();
    return super.game_name;
  }

  @override
  set game_name(String value) {
    _$game_nameAtom.context.conditionallyRunInAction(() {
      super.game_name = value;
      _$game_nameAtom.reportChanged();
    }, _$game_nameAtom, name: '${_$game_nameAtom.name}_set');
  }
}
