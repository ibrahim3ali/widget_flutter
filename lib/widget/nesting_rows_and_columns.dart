import 'package:flutter/material.dart';

class NestingRowsAndColumns extends StatelessWidget {
  const NestingRowsAndColumns({super.key});

  @override
  Widget build(BuildContext context) {
    //example 4
    return Column(
      children: [
        CircleAvatar(child: Text('A')),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [Text('أحمد'), Text(' 500')],
        ),
      ],
    );

    //example 3
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        CircleAvatar(child: Text('A')),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [Text('أحمد'), Text('ahmed@email.com')],
        ),
      ],
    );
    //example 2
    return Column(
      children: [
        Row(children: [Icon(Icons.email), Text('البريد الإلكتروني')]),
        Row(children: [Icon(Icons.phone), Text('رقم الهاتف')]),
        Row(children: [Icon(Icons.map_outlined), Text('العنوان')]),
      ],
    );
    //exercise 1
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Icon(Icons.home), Text('home')],
    );

    //Ex1ample 2
    return Row(
      children: [
        Icon(Icons.person),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text('الاسم'), Text('البريد الإلكتروني')],
        ),
      ],
    );
    //Ex1ample 1
    return Column(
      children: [
        Text('الاسم'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text('رقم الهاتف'), Icon(Icons.phone)],
        ),
      ],
    );
  }
}
