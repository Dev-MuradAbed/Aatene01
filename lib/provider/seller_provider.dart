import 'package:flutter/material.dart';

import '../models/seller_model.dart';

class SellerProvider extends ChangeNotifier {
  List<SellerModel> sellers = [];

  Future<void> fetchSellers() async {
    await Future.delayed(Duration(seconds: 2));

    final List<Map<String, dynamic>> rawData = [
      {
        'imageProfile': 'assets/image/profile.png',
        'sellerName': 'Elina Shop',
        'rate': 3.2,
        'owner': true,
        'imageProduct': [
          'assets/image/1.png',
          'assets/image/2.png',
          'assets/image/3.png',
        ],
      },
      {
        'imageProfile': 'assets/image/profile.png',
        'sellerName': 'Elina Shop',
        'rate': 3.2,
        'owner': true,
        'imageProduct': [
          'assets/image/1.png',
          'assets/image/2.png',
          'assets/image/3.png',
        ],
      },
      {
        'imageProfile': 'assets/image/profile.png',
        'sellerName': 'Elina Shop',
        'rate': 3.2,
        'owner': true,
        'imageProduct': [
          'assets/image/1.png',
          'assets/image/2.png',
          'assets/image/3.png',
        ],
      },  {
        'imageProfile': 'assets/image/profile.png',
        'sellerName': 'Elina Shop',
        'rate': 3.2,
        'owner': true,
        'imageProduct': [
          'assets/image/1.png',
          'assets/image/2.png',
          'assets/image/3.png',
        ],
      },
    ];

    sellers = rawData.map((data) => SellerModel.fromMap(data)).toList();
    notifyListeners();
  }
}

// ues http
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// import '../models/seller_model.dart';
//
// class SellerProvider extends ChangeNotifier {
//   List<SellerModel> sellers = [];
//
//   Future<void> fetchSellers() async {
//     try {
//       // Make an API request to fetch seller data
//       final response = await http.get(Uri.parse(''));
//
//       // Check if the request was successful
//       if (response.statusCode == 200) {
//         final rawData = json.decode(response.body) as List<dynamic>;
//
//         sellers = rawData.map((data) => SellerModel.fromMap(data)).toList();
//         notifyListeners();
//       } else {
//         // Handle error if the request was not successful
//         print('Failed to fetch sellers. Status code: ${response.statusCode}');
//       }
//     } catch (error) {
//       // Handle any exceptions that occurred during the request
//       print('Failed to fetch sellers. Error: $error');
//     }
//   }
// }


// ues firebase

// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// import '../models/seller_model.dart';
//
// class SellerProvider extends ChangeNotifier {
//   List<SellerModel> sellers = [];
//
//   Future<void> fetchSellers() async {
//     try {
//       // Fetch seller data from Firebase Firestore collection
//       final QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore.instance
//           .collection('sellers')
//           .get();
//
//       sellers = snapshot.docs.map((doc) => SellerModel.fromMap(doc.data())).toList();
//       notifyListeners();
//     } catch (error) {
//       // Handle any exceptions that occurred during the request
//       print('Failed to fetch sellers. Error: $error');
//     }
//   }
// }
