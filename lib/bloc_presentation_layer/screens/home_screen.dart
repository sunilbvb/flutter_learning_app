import 'package:flutter/material.dart';
import '../widgets/navigation_routes/navigation_routes.dart';
import 'tenants/list_of_tenants.dart';
import 'invoices/list_of_invoices.dart';
import 'properties/list_of_properties.dart';
import 'units/list_of_units.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rent Management"),
      ),
      body: Center(
        child: Column(
          children: [
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.teal,
                backgroundColor: Colors.pink,
                shadowColor: Colors.red,
                elevation: 10,
                side: BorderSide(color: Colors.black, width: 1),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              child: Text(
                "Navigate to PROPERTIES Screen",
              ),
              onPressed: () {
                navigateToPageWithLR(context, ListOfProperties());
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(elevation: 10),
              child: Text(
                "Navigate to INVOICES Screen",
              ),
              onPressed: () {
                navigateToPageWithLR(context, ListOfInvoices());
              },
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.greenAccent),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
              child: Text(
                "Navigate to TENANTS Screen",
              ),
              onPressed: () {
                navigateToPageWithLR(context, ListOfTenants());
              },
            ),
            TextButton(
              child: Text(
                "Navigate to UNITES Screen",
              ),
              onPressed: () {
                navigateToPageWithLR(context, ListOfUnits());
              },
            ),
          ],
        ),
      ),
    );
  }
}
