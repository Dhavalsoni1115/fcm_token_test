import 'package:cloud_firestore/cloud_firestore.dart';

storeFcmToken(String value, String id) {
  return FirebaseFirestore.instance
      .collection('staff')
      .doc(id)
      .update({'fcmToken': value});
}
