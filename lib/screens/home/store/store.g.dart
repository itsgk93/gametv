// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OverviewStore on OverviewStoreInstance, Store {
  final _$cardInfoAtom = Atom(name: 'OverviewStoreInstance.cardInfo');

  @override
  CardInfo get cardInfo {
    _$cardInfoAtom.context.enforceReadPolicy(_$cardInfoAtom);
    _$cardInfoAtom.reportObserved();
    return super.cardInfo;
  }

  @override
  set cardInfo(CardInfo value) {
    _$cardInfoAtom.context.conditionallyRunInAction(() {
      super.cardInfo = value;
      _$cardInfoAtom.reportChanged();
    }, _$cardInfoAtom, name: '${_$cardInfoAtom.name}_set');
  }

  final _$cardDataAtom = Atom(name: 'OverviewStoreInstance.cardData');

  @override
  ObservableList<CardItem> get cardData {
    _$cardDataAtom.context.enforceReadPolicy(_$cardDataAtom);
    _$cardDataAtom.reportObserved();
    return super.cardData;
  }

  @override
  set cardData(ObservableList<CardItem> value) {
    _$cardDataAtom.context.conditionallyRunInAction(() {
      super.cardData = value;
      _$cardDataAtom.reportChanged();
    }, _$cardDataAtom, name: '${_$cardDataAtom.name}_set');
  }

  final _$hasExceptionAtom = Atom(name: 'OverviewStoreInstance.hasException');

  @override
  bool get hasException {
    _$hasExceptionAtom.context.enforceReadPolicy(_$hasExceptionAtom);
    _$hasExceptionAtom.reportObserved();
    return super.hasException;
  }

  @override
  set hasException(bool value) {
    _$hasExceptionAtom.context.conditionallyRunInAction(() {
      super.hasException = value;
      _$hasExceptionAtom.reportChanged();
    }, _$hasExceptionAtom, name: '${_$hasExceptionAtom.name}_set');
  }

  final _$loadingAtom = Atom(name: 'OverviewStoreInstance.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

  final _$getUserDetailsAsyncAction = AsyncAction('getUserDetails');

  @override
  Future getUserDetails() {
    return _$getUserDetailsAsyncAction.run(() => super.getUserDetails());
  }

  final _$OverviewStoreInstanceActionController =
      ActionController(name: 'OverviewStoreInstance');

  @override
  dynamic init() {
    final _$actionInfo = _$OverviewStoreInstanceActionController.startAction();
    try {
      return super.init();
    } finally {
      _$OverviewStoreInstanceActionController.endAction(_$actionInfo);
    }
  }
}
