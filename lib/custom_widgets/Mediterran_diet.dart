import 'package:flutter/material.dart';

class Mediterraneandiet extends StatelessWidget {
  final String leading;
  final String trailing;
  final Icon icon;
  const Mediterraneandiet({
    super.key, 
    required this.leading,
     required this.trailing, 
     required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(leading,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        Row(
          children: [
            Text(trailing,style: const TextStyle(color: Colors.blue)),
            const SizedBox(width: 5),
            icon
          ],
        )
              
      ],
    );
  }
}