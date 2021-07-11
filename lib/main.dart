import 'package:flutter/material.dart';
import 'package:flutter_base_app/bus/rx_bus.dart';
import 'package:flutter_base_app/parent.dart';
import 'package:flutter_base_app/screens/home.dart';
import 'package:flutter_base_app/service/hud_service.dart';
import 'package:flutter_base_app/service/service_locator.dart';

void main() {
  final _rxBus = RxBus();
  Services.add(HudService(_rxBus));
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (ctx, widget) => ParentWidget(widget!),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}




