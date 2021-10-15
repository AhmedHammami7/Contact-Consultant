import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoCard extends StatelessWidget {
  final dynamic text;
  final IconData? icon;
  dynamic onPressed;

  InfoCard({
    @required this.text,
    @required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.orange,
          ),
          title: Text(
            text,
            style: GoogleFonts.poppins(fontSize: 20, color: Colors.orange),
          ),
        ),
      ),
    );
  }
}
