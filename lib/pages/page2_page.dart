import 'package:app_estate/controllers/user_controller.dart';
import 'package:app_estate/models/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Page2Page extends StatelessWidget {
  final userCtrl = Get.find<UserController>();
  @override
  Widget build(BuildContext context) {
    // print(Get.arguments);
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
                final newUser = User(name:'javier', age: 23);
                userCtrl.loadUser( newUser );
                Get.snackbar(
                  'User add', 
                  'name: Javier',
                  backgroundColor: Colors.white,
                  colorText: Colors.black,
                  boxShadows: [
                    const BoxShadow(
                      color: Colors.black38,
                      blurRadius: 10
                    )
                  ]
                );
              },
            ),
            MaterialButton(
              child: const Text('Change age', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                userCtrl.changeAge( 24 );
              },
            ),
            MaterialButton(
              child: const Text('Add profession', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                userCtrl.addProfession( 'Profession #${ userCtrl.professionsCount + 1 }' );
              },
            ),
            MaterialButton(
              child: const Text('Chage theme', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                Get.changeTheme(Get.isDarkMode ? ThemeData.light() :  ThemeData.dark() );
              },
            ),
          ],
        )
     ),
   );
  }
} 