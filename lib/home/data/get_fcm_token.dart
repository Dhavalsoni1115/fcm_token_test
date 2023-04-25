import 'package:firebase_messaging/firebase_messaging.dart';

class FcmToken {
  Future<String> getFCMaction() async {
    final String token = "";
    try {
      // get FCM token
      final FirebaseMessaging fcm = FirebaseMessaging.instance;
      final token = await fcm.getToken();
      print('11111111');
      print(token);
    } catch (Exception) {
      final String token = "";
    }
    return token;
  }
}
