import 'package:flutter/material.dart';

class EatenAndBurned extends StatelessWidget {
  final String title;
  final Icon icon;
  final String number;
  final Color color;
  const EatenAndBurned({
    super.key, 
    required this.title, 
    required this.icon, 
    required this.number, 
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 65,
          width: 2,
          color: Colors.blueAccent,
        ),
        const SizedBox(width: 10),
         Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: const TextStyle(fontSize: 18),),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                icon,
                const SizedBox(width: 5),
                Text(number,style: const TextStyle(fontSize: 28,fontWeight: FontWeight.w500)),
                 const SizedBox(width: 5),
                const Text("kcal",style: TextStyle(fontSize: 15,))
              ],
            )
          ],
        )
      ],
    );
  }
}