import 'package:flutter/material.dart';
class MaxMinSicaklikWidget extends StatelessWidget {
  const MaxMinSicaklikWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("Maksimum: " +24.toString() + " °C"),
        Text("Minumum: " +12.toString() + " °C"),

      ],
    );
  }
}
