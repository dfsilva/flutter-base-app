import 'package:mobx/mobx.dart';

part 'hud_store.g.dart';

class HudStore = _HudStore with _$HudStore;

abstract class _HudStore with Store{

  @observable
  bool showingHud = false;
  @observable
  String text = "Loading...";

  @action
  showHud({String? text}){
    showingHud = true;
    this.text = text ?? "Loading...";
  }

  @action
  hideHud(){
    showingHud = false;
  }

}