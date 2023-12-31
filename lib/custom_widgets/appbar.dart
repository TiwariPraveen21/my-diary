import 'package:flutter/material.dart';

class MyAction extends StatelessWidget {
  const MyAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 180,
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_back_ios),
            Row(
              children: [
            Icon(Icons.calendar_month),
            SizedBox(width: 10,),
            Text("15 May")
              ],
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}