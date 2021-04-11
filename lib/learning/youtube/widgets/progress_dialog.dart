import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class ProgressDialogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: new Text("Show Dialog"),
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return ProgressDialog(message: "Please wait...");
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class ProgressDialog extends StatelessWidget {
  final String message;

  ProgressDialog({this.message});

  @override
  Widget build(BuildContext context) {
    print(message);
    return Dialog(
      backgroundColor: Colors.white,
      child: Container(
        width: 10,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Row(
          children: [
            SizedBox(width: 20.0),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
            ),
            SizedBox(width: 30.0),
            Text(
              message,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
