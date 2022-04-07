import 'package:app_estate/models/user.dart';
import 'package:app_estate/services/user_service.dart';
import 'package:flutter/material.dart';


class Page2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
        stream: userService.userStream,
        initialData: userService.user,
        builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
          return Container(
            child: snapshot.hasData 
                  ? Text('${userService.user?.name}') 
                  : const Text('Page 2'),
            );
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: const Text('Set user', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                final newUser = User(name: 'Javier', age: 23, professions: ['dev']);
                userService.loadUser(newUser);
              },
            ),
            MaterialButton(
              child: const Text('Change age', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () { 
                userService.changeAge(24);
              },
            ),
            MaterialButton(
              child: const Text('Add profession', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                
              },
            ),
          ],
        )
     ),
   );
  }

  
} 