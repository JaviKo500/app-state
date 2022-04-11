import 'package:app_estate/services/user_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:app_estate/pages/page1_page.dart';
import 'package:app_estate/pages/page2_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider( create: ( _ ) => UserService())
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        initialRoute: 'page1',
        routes: {
          'page1': ( _ ) => Page1Page(),
          'page2': ( _ ) => Page2Page(),
        },
      ),
    );
  }
}