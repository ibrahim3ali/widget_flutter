import 'package:flutter/material.dart';

class WhatYouDoExpandedInFlutter extends StatelessWidget {
  const WhatYouDoExpandedInFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Icon(Icons.lock, size: 100, color: Colors.blue),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                spacing: 12,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(decoration: InputDecoration(labelText: 'Email')),
                  TextField(decoration: InputDecoration(labelText: 'password')),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: ElevatedButton(onPressed: () {}, child: Text('Login')),
            ),
          ),
        ],
      ),
    );
  }
}
