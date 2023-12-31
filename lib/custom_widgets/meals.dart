import 'package:flutter/material.dart';

class Meals extends StatelessWidget {
  final String heading;
  final String title1;
  final String title2;
  final String title3;
  final String kcal;
  final Color color1;
  final Color color2;
  final Image img;
  const Meals({
    super.key,
    required this.heading,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.kcal,
    required this.color1,
    required this.color2,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        alignment: Alignment.center,
        children: [
          const SizedBox(
            height: 330,
           // width: 170,
          ),
          Positioned(
            child: Container(
              //height: 250,
              width: 190,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(100)),
                gradient: LinearGradient(
                  colors: [color1, color2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Text(heading,
                        style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    const SizedBox(height: 10),
                    Text(title1,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                    Text(title2,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                    Text(title3,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                    const SizedBox(height: 20),
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(kcal,
                            style: const TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                        const SizedBox(width: 5),
                        const Text("kcal",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w600)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: -5,
            top: -20,
            child: Container(
              height: 115,
              width: 115,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                color: const Color.fromARGB(49, 255, 243, 243),
              ),
            ),
          ),
          Positioned(top: -20, left: 5, child: img)
        ],
      ),
    );
  }
}
