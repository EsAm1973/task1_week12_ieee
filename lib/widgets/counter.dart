import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150, // Set a fixed width for the container
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            constraints: const BoxConstraints(maxHeight: 40, maxWidth: 40),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    if (count > 0) {
                      count--;
                    }
                  });
                },
                icon: const Icon(
                  Icons.remove,
                  color: Colors.white,
                )),
          ),
          Text(
            '$count',
            style: GoogleFonts.audiowide(
              textStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.red,
            ),
            constraints: const BoxConstraints(maxHeight: 40, maxWidth: 40),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
