import 'dart:developer' show log;

import 'package:flutter/material.dart';

class AbsorbPointerWidget extends StatelessWidget {
  const AbsorbPointerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AbsorbPointer(
            absorbing: true,

            child: ElevatedButton(
              onPressed: () {
                log('Button 1 pressed');
              },
              child: const Text('Button 1'),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              log('Button 2 pressed');
            },
            child: const Text('Button 2'),
          ),
        ],
      ),
    );
  }
}
