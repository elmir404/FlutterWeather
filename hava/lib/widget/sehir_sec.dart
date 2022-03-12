import 'package:flutter/material.dart';
class SehirSecWidget extends StatefulWidget {
  const SehirSecWidget({Key key}) : super(key: key);

  @override
  _SehirSecWidgetState createState() => _SehirSecWidgetState();
}

class _SehirSecWidgetState extends State<SehirSecWidget> {
  final _textControler =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shehir Sec"),),
      body: Form(child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _textControler,
                decoration: InputDecoration(
                  labelText: 'Shehir',
                  hintText: "Şəhər Seçin",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          IconButton(icon: Icon(Icons.search), onPressed: (){
            Navigator.pop(context,_textControler.text);}),
        ],
      ),)
    );
  }
}
