import 'package:app_estate/models/user.dart';
import 'package:flutter/material.dart';

class UserService with ChangeNotifier{
  User? _user;
  
  User get user => _user!;
  bool get userExists => _user != null;

  set user( User user ) {
    _user = user;
    notifyListeners();
  }

  void changeAge( int age ) {
    _user?.age = age;
    notifyListeners();
  }

  void removeUser() {
    _user = null;
    notifyListeners();
  }

  void addProfession() {
    _user?.professions?.add('Professions ${ _user!.professions!.length + 1}');
    notifyListeners();
  }
}