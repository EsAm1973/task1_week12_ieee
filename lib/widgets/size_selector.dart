import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SizeButton extends StatelessWidget {
  const SizeButton(
      {super.key,
      required this.index,
      required this.size,
      required this.onSelected,
      this.selectedButtonIndex});
  final selectedButtonIndex;
  final Function(int) onSelected;
  final int index;
  final String size;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelected(index);
      },
      child: Container(
        width: 60,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color:
              index == selectedButtonIndex ? Colors.red : Colors.grey.shade800,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
            textAlign: TextAlign.center,
            size,
            style: GoogleFonts.audiowide(
                textStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold))),
      ),
    );
  }
}
