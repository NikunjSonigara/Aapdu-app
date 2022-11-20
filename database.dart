import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dbestech/Citizen/bottomnav.dart';
import 'package:dbestech/Citizen/citizen.dart';
import 'package:dbestech/Organization/org_bottom_nav.dart';
import 'package:dbestech/amc_team_signup.dart';
import 'package:dbestech/login_page.dart';
import 'package:dbestech/organization_signup.dart';
import 'package:get/get.dart';

import 'AMC Team Home/amc_nav.dart';
import 'AMC Team/amc_nav.dart';
import 'Sponsor/sponsor_home.dart';

class DatabaseMethods {
  // Add user data to database
  Future addUserInfoToDBUser(String userId, Map<String, dynamic> userInfoMap) {
    return FirebaseFirestore.instance
        .collection("users")
        .doc(userId)
        .set(userInfoMap);
  }

  /*Future<DocumentSnapshot>*/ void getUserFromDBUser(String mail) async {
    //return FirebaseFirestore.instance.collection('users').doc(userId).get();
    String rol = '';
    final querySnapshot = await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: mail)
        .get();

    for (var doc in querySnapshot.docs) {
      // Getting data directly
      rol = doc.get('role');
    }

    if (rol == 'citizen') {
      Get.offAll(() => Bottom_Nav());
    }
    if (rol == 'teamMember') {
      Get.offAll(() => AMC_Nav());
    }
    if (rol == 'ORG') {
      Get.offAll(() => Org_Bottom_Nav());
    }
    if (rol == 'sponsor') {
      Get.offAll(() => Sponsor_Home());
    }
  }
}
