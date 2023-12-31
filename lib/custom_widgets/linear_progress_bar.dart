import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LinearProgressBar extends StatelessWidget {
   final String heading;
    final Color progressColor;
    final Color bgColor;
    final double progressPercent;
    final String weight;
  const LinearProgressBar({
    super.key, 
    required this.heading, 
    required this.progressColor, 
    required this.bgColor, 
    required this.progressPercent, 
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(heading,style:const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
      LinearPercentIndicator(
        padding:const EdgeInsets.all(0),
        width: 80.0,
        lineHeight: 6.0,
        percent: progressPercent,
        backgroundColor: bgColor,
        progressColor: progressColor,
      ),
     Text(weight),
    ]);
  }
}