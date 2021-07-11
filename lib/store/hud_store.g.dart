// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hud_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HudStore on _HudStore, Store {
  final _$showingHudAtom = Atom(name: '_HudStore.showingHud');

  @override
  bool get showingHud {
    _$showingHudAtom.reportRead();
    return super.showingHud;
  }

  @override
  set showingHud(bool value) {
    _$showingHudAtom.reportWrite(value, super.showingHud, () {
      super.showingHud = value;
    });
  }

  final _$textAtom = Atom(name: '_HudStore.text');

  @override
  String get text {
    _$textAtom.reportRead();
    return super.text;
  }

  @override
  set text(String value) {
    _$textAtom.reportWrite(value, super.text, () {
      super.text = value;
    });
  }

  final _$_HudStoreActionController = ActionController(name: '_HudStore');

  @override
  dynamic showHud({String? text}) {
    final _$actionInfo =
        _$_HudStoreActionController.startAction(name: '_HudStore.showHud');
    try {
      return super.showHud(text: text);
    } finally {
      _$_HudStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic hideHud() {
    final _$actionInfo =
        _$_HudStoreActionController.startAction(name: '_HudStore.hideHud');
    try {
      return super.hideHud();
    } finally {
      _$_HudStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
showingHud: ${showingHud},
text: ${text}
    ''';
  }
}
