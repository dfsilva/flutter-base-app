import 'package:rxdart/rxdart.dart';

class RxBus{

  BehaviorSubject<dynamic> _bus = BehaviorSubject();

  T send<T>(T msg, {int delaySeconds = 0}){
    if(delaySeconds > 0){
      Future.delayed(Duration(seconds: delaySeconds), () => _bus.add(msg));
    }else{
      _bus.add(msg);
    }
    return msg;
  }

  BehaviorSubject<dynamic> subscribe(){
    return _bus;
  }

  bool hasListeners() => _bus.hasListener;

  void close() => _bus.close();

}