import 'package:flutter/material.dart';

class ExExpandedAndFlexible extends StatelessWidget {
  const ExExpandedAndFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: 600,
            height: 300,
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.red)),
                Container(width: 20, color: Colors.blue),
              ],
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 600,
            height: 300,
            child: Row(
              children: [
                Flexible(flex: 1, child: Container(color: Colors.red)),
                Flexible(flex: 2, child: Container(color: Colors.blue)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
