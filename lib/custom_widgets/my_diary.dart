import 'package:flutter/material.dart';
import 'package:my_diary/custom_widgets/appbar.dart';

class MyDiary extends StatelessWidget {
  const MyDiary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('My Diary',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        MyAction()
      ],
    );
  }
}