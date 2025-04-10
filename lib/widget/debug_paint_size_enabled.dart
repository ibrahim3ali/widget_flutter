import 'dart:developer' show log;

import 'package:flutter/material.dart';

class DebugPaintSizeEnabled extends StatelessWidget {
  const DebugPaintSizeEnabled({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Row(
          children: [
            Column(
              children: [
                Icon( Icons.access_alarm),
                Container(child: Text('data'),)
              ],
            ),
            Column(
              children: [
                Icon( Icons.access_alarm),
                Container(child: Text('data'),)
              ],
            ), Column(
              children: [
                Icon( Icons.access_alarm),
                Container(child: Text('data'),)
              ],
            ),

          ],
        ),
      ),
    );
  }
}
