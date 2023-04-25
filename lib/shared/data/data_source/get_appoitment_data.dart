import 'package:cloud_firestore/cloud_firestore.dart';

class Appoitment {
  getAppoitment(String staffId) async {
    try {
      final firebase = FirebaseFirestore.instance.collection('appointments');
      var selectedAppoitmentData =
          firebase.doc(staffId).get().then((DocumentSnapshot documentSnapshot) {
        if (documentSnapshot.exists) {
          // print('object');
          // print(documentSnapshot.data());
          dynamic id = documentSnapshot.id;
          dynamic serData = documentSnapshot.data();
          //var data = StaffModel.fromJson(documentSnapshot.data());
          // print(id.toString());
          // print(serData.toString());
          return {'id': id, ...serData};
          // documentSnapshot.data();
        } else {
          print('Appoitment does not exist on the database');
        }
      });
      return selectedAppoitmentData;
    } catch (e) {
      print(e);
    }
  }

  // getAllAppoitmentData() async {
  //   dynamic appotmentId;
  //   dynamic appotmentData;

  //   try {
  //     QuerySnapshot querySnapshot =
  //         await FirebaseFirestore.instance.collection('appointments').get();
  //     appotmentData = querySnapshot.docs.map((doc) {
  //       appotmentId = doc.id;
  //       doc.data();
  //       return {'id': appotmentId, ...doc.data()};
  //     }).toList();
  //     return appotmentData;
  //   } catch (e) {
  //     print(e);
  //   }
  // }
}
