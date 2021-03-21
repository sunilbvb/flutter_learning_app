import 'package:flutter/material.dart';

class UnitDescription extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => UnitDescriptionState();
}

class UnitDescriptionState extends State<UnitDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Unit"),
      ),
      body: Center(
        child: Text('Unit Description here'),
      ),
    );
  }
}
