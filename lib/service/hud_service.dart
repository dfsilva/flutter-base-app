import 'package:flutter_base_app/bus/actions.dart';
import 'package:flutter_base_app/bus/rx_bus.dart';
import 'package:flutter_base_app/service/base_service.dart';
import 'package:flutter_base_app/store/hud_store.dart';

class HudService extends BaseService<HudStore>{
  HudService(RxBus rxBus) : super(rxBus, HudStore());



  Future<void> doSomethingHard(){

    bus().send(ShowHud(text: "Doing something"));

    return Future.delayed(const Duration(seconds: 3), (){
      bus().send(HideHud());
    });
  }

  @override
  void onReceiveMessage(msg) {
    if(msg is ShowHud){
      store().showHud(text: msg.text);
    }
    if(msg is HideHud){
      store().hideHud();
    }
  }

}