import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_shirt/widgets/counter.dart';
import 'package:t_shirt/widgets/rating.dart';
import 'package:t_shirt/widgets/size_selector.dart';
import 'package:t_shirt/widgets/text_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  bool favorite = false;
  void toggleSize(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
            backgroundColor: Colors.grey.shade900,
            foregroundColor: Colors.white,
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    favorite = !favorite;
                  });
                },
                icon: favorite
                    ? const Icon(
                        Icons.favorite,
                        size: 35,
                      )
                    : const Icon(
                        Icons.favorite_border,
                        size: 35,
                      ),
                color: favorite ? Colors.red : null,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  size: 35,
                ),
              )
            ],
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios),
            )),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 300,
                  height: 420,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      color: Colors.black,
                      image: const DecorationImage(
                        image: AssetImage('assets/belgium.png'),
                      )),
                ),
                Column(
                  children: [
                    SizeButton(
                      index: 0,
                      size: 'S',
                      onSelected: toggleSize,
                      selectedButtonIndex: selectedIndex,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizeButton(
                      index: 1,
                      size: 'L',
                      onSelected: toggleSize,
                      selectedButtonIndex: selectedIndex,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizeButton(
                      index: 2,
                      size: 'M',
                      onSelected: toggleSize,
                      selectedButtonIndex: selectedIndex,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizeButton(
                      index: 3,
                      size: 'XL',
                      onSelected: toggleSize,
                      selectedButtonIndex: selectedIndex,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizeButton(
                      index: 4,
                      size: '2XL',
                      onSelected: toggleSize,
                      selectedButtonIndex: selectedIndex,
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Belgium EURO',
                      style: GoogleFonts.audiowide(
                          textStyle: const TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                  Text('20/21 Away by Adidas',
                      style: GoogleFonts.audiowide(
                          textStyle: const TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ))),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Rating(),
                      Counter(),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Details',
                              style: GoogleFonts.audiowide(
                                  textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold))),
                          const SizedBox(
                            height: 5,
                          ),
                          const TextDetails(
                              label1: 'Material:', label2: 'Polyster'),
                          const SizedBox(
                            height: 5,
                          ),
                          const TextDetails(
                              label1: 'Shipping:', label2: 'In 5 to 6 Days'),
                          const SizedBox(
                            height: 5,
                          ),
                          const TextDetails(
                              label1: 'Returns:', label2: 'Within 20 Days'),
                        ],
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white, // Background color
                            padding: const EdgeInsets.symmetric(
                                vertical: 30, horizontal: 30),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {},
                          child: Column(
                            children: [
                              const Icon(
                                Icons.shopping_bag_outlined,
                                size: 30,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text('\$89',
                                  style: GoogleFonts.audiowide(
                                      textStyle: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold))),
                            ],
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
