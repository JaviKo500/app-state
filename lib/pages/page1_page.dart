
import 'package:app_estate/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:app_estate/services/user_services.dart';


class Page1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () => userService.removeUser()
          ,)
        ],
      ),
      body: userService.userExists
            ? userInformation(user: userService.user,)
            : const Center(child:  Text( 'Not user exists' ),),
     floatingActionButton: FloatingActionButton(
       child:  const Icon( Icons.accessibility_new),
       onPressed: () => Navigator.pushNamed(context, 'page2'),
     ),
   );
  }
}

class userInformation extends StatelessWidget {
  final User user;
  const userInformation({
    Key? key,
    required this.user
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('General', style:  TextStyle(fontSize:  18, fontWeight: FontWeight.bold),),
          const Divider(),
          ListTile(title:  Text('Name: ${user.name}'),),
          ListTile(title:  Text('Edad: ${user.age}'),),
          const Text('Professions', style:  TextStyle( fontSize:  18, fontWeight:  FontWeight.bold)),
          // const ListTile(title:  const Text('Profession 1'),),
          ...user.professions!.map(
            (prof) => ListTile(title: Text(prof),
            )
          ).toList()

        ],
      ),
    );
  }
} 