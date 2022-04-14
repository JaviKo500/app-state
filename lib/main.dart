import 'package:app_estate/bloc/user/user_bloc.dart';
import 'package:app_estate/pages/page1_page.dart';
import 'package:app_estate/pages/page2_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: ( _ ) => UserBloc()),
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