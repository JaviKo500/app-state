import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:app_estate/models/user.dart';


part 'user_state.dart';
class UserCubit extends Cubit<UserState>{

  UserCubit(): super( UserInitial() );

  void selectUser( User user ) {
    emit( UserActive(user));
  }

  void changeAge( int age ) {
    final currentState = state;
    if ( currentState is UserActive ) {
      final newUser = currentState.user.copyWith(age: age);
      emit( UserActive( newUser ) );
    }
  }

  void addProfession() {
    final currentState = state;
    if ( currentState is UserActive ) {
      final newProfesions = [
        ...currentState.user.professions,
        'profession ${ currentState.user.professions.length + 1 }'
      ];
      final  newUser = currentState.user.copyWith(professions: newProfesions);
      emit( UserActive( newUser ));
    }
  }

  void removeUser() {
    emit( UserInitial() );
  }

}