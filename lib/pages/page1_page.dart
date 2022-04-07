import 'dart:ffi';

import 'package:flutter/material.dart';


class Page1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: userInformation(),
     floatingActionButton: FloatingActionButton(
       child:  Icon( Icons.accessibility_new),
       onPressed: () => Navigator.pushNamed(context, 'page2'),
     ),
   );
  }
}

class userInformation extends StatelessWidget {
  const userInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('General', style:  TextStyle(fontSize:  18, fontWeight: FontWeight.bold),),
          Divider(),
          ListTile(title:  Text('Name:'),),
          ListTile(title:  Text('Edad:'),),
          Text('Professions', style:  TextStyle( fontSize:  18, fontWeight:  FontWeight.bold)),
          ListTile(title:  Text('Profession 1'),),
          ListTile(title:  Text('Profession 2'),),
          ListTile(title:  Text('Profession 3'),),

        ],
      ),
    );
  }
} 