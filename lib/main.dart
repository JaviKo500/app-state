import 'package:app_estate/pages/page1_page.dart';
import 'package:app_estate/pages/page2_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'page1',
      routes: {
        'page1': ( _ ) => Page1Page(),
        'page2': ( _ ) => Page2Page(),
      },
    );
  }
}