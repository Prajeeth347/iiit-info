import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class contactuspage extends StatelessWidget {
  void mailLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('Could not launch $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text(
          'Contact us',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(3),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Contact Us',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.mail_outline_outlined,
                    color: Colors.white,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      mailLaunch('mailto:Groupztrio@gmail.com?');
                    },
                    child: Text(
                      'Groupztrio@gmail.com',
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      mailLaunch('tel:+917989772884');
                    },
                    child: Text(
                      '+91 79897 72884',
                      style: TextStyle(fontSize: 20),
                    )),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
