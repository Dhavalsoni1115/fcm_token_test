import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_notification/shared/presentation/screens/map.dart';
import 'package:test_notification/splash/presentation/screen/splash_screen.dart';

import 'constants.dart';
import 'home/presentation/screens/home_screen.dart';
import 'login/data/data_source/staff_shared_pref.dart';
import 'login/presentation/screens/login_screen.dart';

String? token;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(firebaseMessageingHandeler);
  return runApp(const MyApp());
}

@pragma('vm:entry point')
Future<void> firebaseMessageingHandeler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print(message.notification!.title.toString());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var token;
  getToken() async {
    var sharedPref = LoginSharedPrefrance();
    token = await sharedPref.getLoginToken();
    //print(token);
    setState(() {
      token;
    });
    return token;
  }

  @override
  void initState() {
    super.initState();
    getToken();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarColor: primaryColor,
        statusBarIconBrightness: Brightness.light,
        statusBarColor: primaryColor, // Note RED here
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: token == null
          ? AnimatedSplashScreen(
              backgroundColor: backgroundColor,
              splash: const SplashScreen(),
              nextScreen: const LoginScreen(),
              duration: 1000,
              splashTransition: SplashTransition.fadeTransition,
            )
          : HomeScreen(
              staffId: token.toString(),
            ),
    );
  }
}
