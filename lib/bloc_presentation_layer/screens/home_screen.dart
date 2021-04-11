import 'package:flutter/material.dart';
import 'package:rms_mobile_app/learning/audio_player_screen.dart';
import 'package:rms_mobile_app/learning/dice_screen.dart';
import 'package:rms_mobile_app/learning/lerning_screen.dart';
import 'file:///D:/InfiProton/PROJECTS/flutter_learning_app/lib/learning/quiz/quiz_screen.dart';
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
            TextButton(
              child: Text(
                "Navigate to Profile Screen",
              ),
              onPressed: () {
                navigateToPageWithLR(context, LearningScreen());
              },
            ),
            TextButton(
              child: Text(
                "Navigate to Dice Screen",
              ),
              onPressed: () {
                navigateToPageWithLR(context, DiceScreen());
              },
            ),
            TextButton(
              child: Text(
                "Navigate to Audio Player Screen",
              ),
              onPressed: () {
                navigateToPageWithLR(context, AudioPlayerScreen());
              },
            ),
            TextButton(
              child: Text(
                "Navigate to Quiz Screen",
              ),
              onPressed: () {
                navigateToPageWithLR(context, QuizScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
