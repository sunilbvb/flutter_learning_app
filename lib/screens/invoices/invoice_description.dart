import 'package:flutter/material.dart';

class InvoiceDescription extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InvoiceDescriptionState();
}

class InvoiceDescriptionState extends State<InvoiceDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invoice Description'),
      ),
      body: Center(
        child: Text("Invoice Description Here"),
      ),
    );
  }
}
