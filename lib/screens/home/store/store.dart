import 'dart:convert';
import 'dart:io';
import 'package:gametv/screens/home/modal.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:gametv/screens/home/store/card-item.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;

part 'store.g.dart';

class OverviewStore = OverviewStoreInstance with _$OverviewStore;

abstract class OverviewStoreInstance with Store {
  @_ObservableListJsonConverter()
  @observable
  CardInfo cardInfo;

  @observable
  ObservableList<CardItem> cardData = ObservableList<CardItem>();

  @observable
  bool hasException = false;

  @observable
  bool loading = false;

  @action
  init() {}

  @action
  getUserDetails() async {
    loading = true;
    String url =
        "http://tournaments-dot-game-tv-prod.uc.r.appspot.com/tournament/api/tournaments_list_v2?limit=10&status=all";
    try {
      final response = await http.get(url).timeout(const Duration(seconds: 20));
      final res = json.decode(response.body);
      if (res != null) {
        final rest = res['data']['tournaments'] as List<dynamic>;
        // ObservableList<CardItem> cardList;
        rest.forEach((value) {
          cardData.add(CardItem.fromJson(value));
        });
        
        // cardData = cardList;
        loading = false;
        return cardData;
      } else {
        hasException = true;
      }
    } on SocketException catch (error) {
      print(error);
      loading = false;
      hasException = true;
      throw Exception('Something went wrong !! Please try again.. ');
    }
  }

  ObservableList<CardItem> fromJson(List<Map<String, dynamic>> json) =>
      ObservableList.of(json.map(CardItem.fromJson));
  List<Map<String, dynamic>> toJson(ObservableList<CardItem> list) =>
      list.map(CardItem.toJson).toList();
}

class _ObservableListJsonConverter
    implements
        JsonConverter<ObservableList<CardItem>, List<Map<String, dynamic>>> {
  const _ObservableListJsonConverter();

  @override
  ObservableList<CardItem> fromJson(List<Map<String, dynamic>> json) =>
      ObservableList.of(json.map(CardItem.fromJson));
  @override
  List<Map<String, dynamic>> toJson(ObservableList<CardItem> list) =>
      list.map(CardItem.toJson).toList();
}
