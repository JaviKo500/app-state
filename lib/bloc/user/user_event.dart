part of 'user_bloc.dart';

@immutable
abstract class UserEvent { }

class ActivateUser extends UserEvent{
  final User user;

  ActivateUser( this.user );
}
class ChageUserAge extends UserEvent {
  final int age;

  ChageUserAge( this.age );
}
class AddProfession extends UserEvent {
  final String profession;
  AddProfession( this.profession );
}

class DeleteUser extends UserEvent {}