import 'package:app_estate/models/user.dart';
import 'package:get/get.dart';

class UserController extends GetxController{
  
  var existUser = false.obs;
  var user = User().obs;

  int get professionsCount {
    return user.value.professions.length;
  }
  void loadUser( User pUser ){
    existUser.value = true;
    user.value = pUser;
  }
  void changeAge( int age ) {
    user.update((val) {
      val!.age = age;
    });
  }
  void addProfession( String profession ) {
    user.update((val) {
      val!.professions = [
        ...val.professions,
        profession
      ];
    });
  }
}