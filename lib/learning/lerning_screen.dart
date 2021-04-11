import 'package:flutter/material.dart';

class LearningScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LearningScreenState();
}

class _LearningScreenState extends State<LearningScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/slider_images/slider_1.png'),
            ),
            Text(
              "Sunil Bakale",
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
              width: 280,
              child: Divider(
                thickness: 1,
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.teal),
                title: Text(
                  '7406393321',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro'),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.teal),
                title: Text(
                  'sunilbakaleom3@gmail.com',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro'),
                ),
              ),
              /*Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "sunilbakaleom3@gmail.com",
                    style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),*/
            ),
          ],
        ),
      ),
    );
  }
}

/* previous
 Container(
              color: Colors.white,
              margin:EdgeInsets.symmetric(vertical: 10, horizontal:20),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "sunilbakaleom3@gmail.com",
                    style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
 */
