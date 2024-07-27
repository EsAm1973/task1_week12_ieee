import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rate/rate.dart';

class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  double rate = 4.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Rate(
          iconSize: 30,
          color: Colors.red,
          initialValue: rate,
          onChange: (value) {
            setState(() {
              rate = value;
            });
          },
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '$rate',
          style: GoogleFonts.audiowide(
              textStyle: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold)),
        )
      ],
    );
  }
}
