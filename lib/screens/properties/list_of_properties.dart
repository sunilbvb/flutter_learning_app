import 'package:flutter/material.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';
import 'package:rms_mobile_app/widgets/navigation_routes/navigation_routes.dart';

import 'property_description.dart';

class ListOfProperties extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ListOfPropertiesState();
}

class ListOfPropertiesState extends State<ListOfProperties> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Properties")),
      body: Center(
          child: FloatingIconButton(
        icon: Icons.home,
        onPressed: () {
          navigateToPageWithLR(context, PropertyDescription());
        },
        buttonColor: Colors.orange,
      )),
    );
  }
}
