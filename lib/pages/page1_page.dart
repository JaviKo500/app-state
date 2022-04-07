import 'dart:ffi';

import 'package:app_estate/models/user.dart';
import 'package:app_estate/services/user_service.dart';
import 'package:flutter/material.dart';


class Page1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: StreamBuilder(
        stream: userService.userStream,
        builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
          return Container(
            child: snapshot.hasData 
                  ? userInformation(user: userService.user!,) 
                  : const Center( child: Text('User information not found'),),
          );
        },
      ),
     floatingActionButton: FloatingActionButton(
       child:  Icon( Icons.accessibility_new),
       onPressed: () => Navigator.pushNamed(context, 'page2'),
     ),
   );
  }
}

class userInformation extends StatelessWidget {
  final User user;
  const userInformation({
    Key? key, 
    required this.user,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('General', style:  TextStyle(fontSize:  18, fontWeight: FontWeight.bold),),
          const Divider(),
          ListTile(title:  Text('Name: ${ user.name }'),),
          ListTile(title:  Text('Edad: ${ user.age }'),),
          const Text('Professions', style:  TextStyle( fontSize:  18, fontWeight:  FontWeight.bold)),
          ListTile(title:  Text('Profession 1'),),
          ListTile(title:  Text('Profession 2'),),
          ListTile(title:  Text('Profession 3'),),

        ],
      ),
    );
  }
} 