import 'dart:async';

import 'package:app_estate/models/user.dart';

class _UserService {
  User? _user;

  final StreamController<User> _userStreamController = StreamController<User>.broadcast();

  User? get user => _user;
  bool get existsUser => ( _user != null );

  Stream<User> get userStream => _userStreamController.stream;

  void loadUser( User user){
    _user = user;
    _userStreamController.add(user);
  }
  void changeAge( int age){
    _user?.age = age;
    _userStreamController.add(_user!);
  }


  dispose(){
    _userStreamController.close();
  }
}

final userService = _UserService();