import 'package:flutter/material.dart';
import 'package:hava/widget/sehir_sec.dart';

import 'hava_durumu_resm.dart';
import 'hava_min_max.dart';
import 'location.dart';
import 'son_guncelleme.dart';
class WeatherApp extends StatefulWidget {
  const WeatherApp({Key key}) : super(key: key);

  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
   String daxilOlunanSheher="Baki";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Weather App"),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search), onPressed: () async{
      await  Navigator.push(context, MaterialPageRoute(builder: (context)=>SehirSecWidget()));
        }),
      ],),
      body: Center(
        child: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: LocationWidget(secilenSehir:daxilOlunanSheher ,)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child:SonGuncellemeWidget()),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child:HavaDurumuResimWidget()),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(child:MaxMinSicaklikWidget()),
          ),
        ],),
      ),
    );
  }
}
