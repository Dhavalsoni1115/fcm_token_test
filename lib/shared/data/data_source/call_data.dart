import 'package:url_launcher/url_launcher.dart';

class Call {
  makeCall(String phoneno) async {
    phoneno = 'tel:$phoneno';
   // await UrlLauncher.launch("tel:21213123123");
    if (await launch(phoneno)) {
      await launch(phoneno);
    } else {
      print('No dail');
    }
  }
}
