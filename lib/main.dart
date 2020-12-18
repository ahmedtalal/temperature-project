import 'package:flutter/material.dart';
import 'package:flutter_temperature_project/Activities/Home.dart';
import 'package:flutter_temperature_project/RoutingModel/Routing.dart';
main(List<String> args) {
  runApp(TemperatureProject()) ;
}

class TemperatureProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.ROUTE ,
      routes: route ,
    );
  }
}