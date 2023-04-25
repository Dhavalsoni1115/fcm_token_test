 import 'package:cloud_firestore/cloud_firestore.dart';

changeStatus(String value, String id) {
    return FirebaseFirestore.instance
        .collection('appointments')
        .doc(id)
        .update({'status': value});
  }
