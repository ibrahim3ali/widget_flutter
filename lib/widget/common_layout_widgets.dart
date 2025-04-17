import 'package:flutter/material.dart';

class CommonLayoutWidgets extends StatelessWidget {
  const CommonLayoutWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 5,
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: const EdgeInsets.all(20),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.account_circle, size: 100, color: Colors.blueAccent),
              SizedBox(height: 15),
              Text(
                'Ibrahim Ali',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Follow')),
                  ElevatedButton(onPressed: () {}, child: Text('Message')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
