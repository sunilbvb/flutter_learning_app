import 'package:flutter/material.dart';

import '../../widgets/navigation_routes/navigation_routes.dart';
import 'tenant_description.dart';
import 'package:flutter_button/flutter_button.dart';

class ListOfTenants extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ListOfTenantsState();
}

class ListOfTenantsState extends State<ListOfTenants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tenants")),
      body: Center(
          child: HoverButton(
            title: "Hover Button",
            onTap: () {
              navigateToPageWithLR(context, TenantDescription());
            },
          ),
      ),
    );
  }
}