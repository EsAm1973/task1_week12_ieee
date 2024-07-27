import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextDetails extends StatelessWidget {
  const TextDetails({super.key, required this.label1, required this.label2});
  final String label1;
  final String label2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label1,
            style: GoogleFonts.audiowide(
                textStyle: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ))),
        SizedBox(
          width: 5,
        ),
        Text(label2,
            style: GoogleFonts.audiowide(
                textStyle: const TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ))),
      ],
    );
  }
}
