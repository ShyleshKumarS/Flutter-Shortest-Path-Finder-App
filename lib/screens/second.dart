
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:dsa_1/screens/navigation.dart';
class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController latController = TextEditingController();
  TextEditingController lngController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shortest path finder'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // This will pop the current screen off the navigation stack
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter your location',
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: latController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'latitude',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: lngController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'longitude',
              ),
            ),
            SizedBox(height:20),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Material(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NavigationScreen(
                              double.parse(latController.text),
                              double.parse(lngController.text))),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                    child: Text(
                      "Get Start",
                      style: TextStyle(color: Colors.white), // Set text color
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
