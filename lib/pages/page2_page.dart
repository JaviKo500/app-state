import 'package:app_estate/models/user.dart';
import 'package:app_estate/services/user_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Page2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);
    return Scaffold(
      appBar: AppBar(
        title: userService.userExists 
                ? Text( userService.user.name )
                : const Text( 'Page 2' ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: const Text('Set user', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                final newUser = User(name: 'Javier', age: 23, professions: ['dev', 'gamer']);
                userService.user = newUser;
              },
            ),
            MaterialButton(
              child: const Text('Change age', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                userService.changeAge(52);
              },
            ),
            MaterialButton(
              child: const Text('Add profession', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                userService.addProfession();
              },
            ),
          ],
        )
     ),
   );
  }
} 