import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:short_profile/widget/info_card.dart';
import 'package:url_launcher/url_launcher.dart';

const url = 'https://github.com/AhmedHammami7';
const email = 'ahmedhammami377@gmail.com';
const phone = '+216 90440288';
const location = 'Bizerte, Tunisia';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Contact Consultant', home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/me.jpg'),
            ),
            Text('Ahmed Hammami',
                style: GoogleFonts.poppins(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            Text(
              'IT Consultant',
              style: GoogleFonts.poppins(
                  fontSize: 30,
                  color: Colors.orange[50],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.orange.shade700,
              ),
            ),
            InfoCard(
              text: phone,
              icon: Icons.phone,
              onPressed: null,
            ),
            InfoCard(
              text: email,
              icon: Icons.email,
              onPressed: null,
            ),
            InfoCard(
              text: url,
              icon: Icons.web,
              onPressed: null,
            ),
            InfoCard(
              text: location,
              icon: Icons.location_city,
              onPressed: null,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.orange[300],
    );
  }
}
