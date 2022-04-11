import 'package:app_estate/bloc/user/user_cubit.dart';
import 'package:app_estate/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Page2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final  userCubit =  context.read<UserCubit>();
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
                final newUser = User(name: 'Javier', age: 23, professions: [ ' dev' ]);
                userCubit.selectUser(newUser);
              },
            ),
            MaterialButton(
              child: const Text('Change age', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                userCubit.changeAge(24);
              },
            ),
            MaterialButton(
              child: const Text('Add profession', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                userCubit.addProfession();
              },
            ),
          ],
        )
     ),
   );
  }
} 