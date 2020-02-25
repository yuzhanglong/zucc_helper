import 'package:zucc_helper/config/global.dart';
import 'package:zucc_helper/store/base.dart';


class ProfileProvider extends BaseProvder{
  // 用户相关
  String get user  => Global.user;
  String get token => Global.token;
  bool get isLogin => Global.isLogin;


  setUserInfo(user, token){
    Global.user = user;
    Global.token = token;
    Global.isLogin = true;
    notifyListeners();
  }
}