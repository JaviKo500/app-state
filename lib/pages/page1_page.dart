
import 'package:app_estate/controllers/user_controller.dart';
import 'package:app_estate/models/user.dart';
// import 'package:app_estate/pages/page2_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Page1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    final userCtrl = Get.put( UserController() );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Obx( 
        () => userCtrl.existUser.value  
              ? userInformation(user: userCtrl.user.value,)
              : NotInfo()
      ),
     floatingActionButton: FloatingActionButton(
       child:  const Icon( Icons.accessibility_new),
      //  onPressed: () => Navigator.pushNamed(context, 'page2'),
      //  onPressed: () => Get.to( Page2Page() ),
       onPressed: () => Get.toNamed( 'page2', arguments: { 'name': 'Javier', 'edad': 35} ),
     ),
   );
  }
}

class NotInfo extends StatelessWidget {
  const NotInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(child: Text( 'Not user info' ),),
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
          ListTile(title:  Text('Name: ${user.name} '),),
          ListTile(title:  Text('Edad: ${user.age}'),),
          const Text('Professions', style:  TextStyle( fontSize:  18, fontWeight:  FontWeight.bold)),
          ...user.professions.map(
            (prof) => ListTile( title:  Text(prof))
          ).toList()

        ],
      ),
    );
  }
} 