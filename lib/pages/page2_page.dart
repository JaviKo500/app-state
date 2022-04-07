import 'package:flutter/material.dart';


class Page2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
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
                
              },
            ),
            MaterialButton(
              child: const Text('Change age', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                
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