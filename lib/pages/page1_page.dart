
import 'package:app_estate/bloc/user/user_cubit.dart';
import 'package:app_estate/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Page1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
        actions: [
          IconButton(
            onPressed: () => context.read<UserCubit>().removeUser(), 
          icon: const Icon(Icons.logout))
        ],
      ),
      body: BodyScaffold(),
     floatingActionButton: FloatingActionButton(
       child:  const Icon( Icons.accessibility_new),
       onPressed: () => Navigator.pushNamed(context, 'page2'),
     ),
   );
  }
}

class BodyScaffold extends StatelessWidget {
  const BodyScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder< UserCubit, UserState >(
      builder: ( _ , state) {
        switch (state.runtimeType) {
          case UserInitial:
            return const Center( child:  Text( 'Not exists user informtion' ),);
            // break;
          case UserActive:
            return userInformation((state as UserActive).user);
            // break;
          default: 
            return const Center( child:  Text( 'Unknown State'),);
        }
        // if ( state is UserInitial ) {
        //   return const Center( child:  Text( 'Not exists user informtion' ),);
        // } else if ( state is UserActive ){
        //   return userInformation(state.user);
        // } else {
        //   return Center( child:  Text( 'Unknown State'),);
        // }
      },
    );
  }
}

class userInformation extends StatelessWidget {
  final User user;
  const userInformation(this.user);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('General', style:  TextStyle(fontSize:  18, fontWeight: FontWeight.bold),),
          Divider(),
          ListTile(title:  Text('Name: ${user.name }'),),
          ListTile(title:  Text('Edad: ${user.age }'),),
          Text('Professions', style:  TextStyle( fontSize:  18, fontWeight:  FontWeight.bold)),
          Divider(),
          ...user.professions.map(  
            (prof) => ListTile( title:  Text( prof ))
          ).toList()
        ],
      ),
    );
  }
} 