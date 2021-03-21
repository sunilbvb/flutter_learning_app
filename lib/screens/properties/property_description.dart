import 'package:flutter/material.dart';

class PropertyDescription extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PropertyDescriptionState();
}

class PropertyDescriptionState extends State<PropertyDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Property"),
      ),
      body: Center(
        child: Text("Property Description"),
      ),
    );
  }
}
