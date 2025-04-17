import 'package:flutter/material.dart';

class ContainerEx extends StatelessWidget {
  const ContainerEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 150,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.green.shade500,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(child: Text('مرحبا بك')),
    );
  }
}
