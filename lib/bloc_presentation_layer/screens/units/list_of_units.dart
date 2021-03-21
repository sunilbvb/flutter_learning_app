import 'package:flutter/material.dart';
import 'package:flutter_button/flutter_button.dart';

import '../../widgets/navigation_routes/navigation_routes.dart';
import 'unit_description.dart';

class ListOfUnits extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ListOfUnitsState();
}

class ListOfUnitsState extends State<ListOfUnits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Units")),
      body: Center(
        child: LikeButton(
          icon: Icons.home,
          deactiveColor: Colors.grey,
          activeColor: Colors.purple,
          deactiveSize: 50,
          activeSize: 55,
          curve: Curves.easeInExpo,
          onTap: () => navigateToPageWithLR(
            context,
            UnitDescription(),
          ),
        ),
      ),
    );
  }
}
