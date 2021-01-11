import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';

part 'card-item.g.dart';

@JsonSerializable()
class CardItem extends _CardItem with _$CardItem {
  CardItem(String name, String cover_url, String game_name)
      : super(name, cover_url, game_name);
  static CardItem fromJson(Map<String, dynamic> json) =>
      _$CardItemFromJson(json);
  static Map<String, dynamic> toJson(CardItem item) => _$CardItemToJson(item);
}

abstract class _CardItem with Store {
  _CardItem(this.name, this.cover_url, this.game_name);

  @observable
  String name = '';

  @observable
  String cover_url = '';

  @observable
  String game_name = '';
}
