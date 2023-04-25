import 'package:shared_preferences/shared_preferences.dart';

class LoginSharedPrefrance {
  storeLoginToken(token) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('LoginToken', token);
  }

  getLoginToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    print('====LoginSharedPrefData====');
    return pref.getString('LoginToken')!;
  }

  removeToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return await pref.clear();
  }
}
