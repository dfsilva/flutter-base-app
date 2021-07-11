import 'package:flutter/cupertino.dart';
import 'package:flutter_base_app/bus/rx_bus.dart';

abstract class BaseService<S> {
  final RxBus _rxBus;
  final S _store;

  BaseService(this._rxBus, this._store){
    this._rxBus.subscribe().listen((msg) => onReceiveMessage(msg));
  }

  S store() => _store;

  @protected
  RxBus bus() => _rxBus;

  void onReceiveMessage(dynamic msg);

  void dispose(){}
}