import 'package:flutter/material.dart';
import 'package:widget_flutter/widget/common_layout_widgets.dart'
    show CommonLayoutWidgets;

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(body: CommonLayoutWidgets()),
  ),
);
