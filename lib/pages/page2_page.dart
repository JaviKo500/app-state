import 'package:app_estate/models/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'package:app_estate/bloc/user/user_bloc.dart';


class Page2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final userBloc = BlocProvider.of<UserBloc>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: const Text('Set user', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                final newUser = User(name: 'javier', age: 23, professions: [ 'dev', 'gamer' ]);
                userBloc.add( ActivateUser( newUser ) );
              },
            ),
            MaterialButton(
              child: const Text('Change age', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                userBloc.add( ChageUserAge( 24 ) );
              },
            ),
            MaterialButton(
              child: const Text('Add profession', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                userBloc.add( AddProfession( 'new prof' ) );
              },
            ),
          ],
        )
     ),
   );
  }
} 