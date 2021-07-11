import 'package:flutter/material.dart';
import 'package:flutter_base_app/service/hud_service.dart';
import 'package:flutter_base_app/service/service_locator.dart';
import 'package:flutter_hud/flutter_hud.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ParentWidget extends StatefulWidget {
  const ParentWidget(this.child, { Key? key }) : super(key: key);

  final Widget child;

  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {

  final HudService _hudService = Services.get<HudService>(HudService);

  @override
  Widget build(BuildContext context) => Observer(builder: (__) => WidgetHUD(builder: (___)=> widget.child, showHUD: _hudService.store().showingHud));
}