import 'package:flutter/material.dart';
import 'package:nice_button/nice_button.dart';
import 'package:rms_mobile_app/widgets/navigation_routes/navigation_routes.dart';

import 'invoice_description.dart';

class ListOfInvoices extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ListOfInvoicesState();
}

class ListOfInvoicesState extends State<ListOfInvoices> {
  @override
  Widget build(BuildContext context) {
    var firstColor = Color(0xff5b86e5), secondColor = Color(0xff36d1dc);
    return Scaffold(
      appBar: AppBar(title: Text("Invoices")),
      body: Center(
          child: NiceButton(
        radius: 40,
        padding: const EdgeInsets.all(15),
        // icon: Icons.account_box,
        text: "Go to Invoice Desc",
        gradientColors: [secondColor, firstColor],
        onPressed: () {
          navigateToPageWithLR(context, InvoiceDescription());
        },
        background: secondColor,
      )),
    );
  }
}
