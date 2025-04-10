import 'package:flutter/cupertino.dart'
    show
        CupertinoApp,
        CupertinoColors,
        CupertinoNavigationBar,
        CupertinoPageScaffold,
        CupertinoThemeData;
import 'package:flutter/material.dart';

class DebugPaintSizeEnabled extends StatelessWidget {
  const DebugPaintSizeEnabled({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter layout demo',
      theme: CupertinoThemeData(
        brightness: Brightness.light,
        primaryColor: CupertinoColors.systemBlue,
      ),
      home: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGrey,
          middle: Text('Cupertino Navigation Bar'),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Hello world')],
          ),
        ),
      ),
    );
    const String appTitle = 'flutter debug paint size enabled';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: Text(appTitle)),
        body: Center(child: Text('Hello world')),
      ),
    );
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: Text(
          'data',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 32, color: Colors.black87),
        ),
      ),
    );
  }
}
