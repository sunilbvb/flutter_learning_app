import 'package:flutter/material.dart';

class TenantDescription extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TenantDescriptionState();
}

class TenantDescriptionState extends State<TenantDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tenant'),
      ),
      body: Center(
        child: Text('Tenant Description here'),
      ),
    );
  }
}
