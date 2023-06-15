import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductProvider extends ChangeNotifier {
  List<ProductModel> product = [];

  Future<void> fetchProduct() async {
    await Future.delayed(Duration(seconds: 2));

    final List<Map<String, dynamic>> rawData = [
      {
        'image': 'assets/image/product.png',
        'shop': 'Elina Shop',
        'owner': true,
        'rate': 4.9,
        'price': 30,
        'oldPrice': 150,
        'off': 14,
        'productName': 'ProductName',
        'delivery': true,
        'ads': true
      },
      {
        'image': 'assets/image/product.png',
        'shop': 'Elina Shop',
        'owner': true,
        'rate': 4.9,
        'price': 30,
        'oldPrice': 150,
        'off': 14,
        'productName': 'ProductName',
        'delivery': true,
        'ads': true
      },
      {
        'image': 'assets/image/product.png',
        'shop': 'Elina Shop',
        'owner': true,
        'rate': 4.9,
        'price': 30,
        'oldPrice': 150,
        'off': 14,
        'productName': 'ProductName',
        'delivery': true,
        'ads': true
      },
      {
        'image': 'assets/image/product.png',
        'shop': 'Elina Shop',
        'owner': true,
        'rate': 4.9,
        'price': 30,
        'oldPrice': 150,
        'off': 14,
        'productName': 'ProductName',
        'delivery': true,
        'ads': true
      },
      {
        'image': 'assets/image/product.png',
        'shop': 'Elina Shop',
        'owner': true,
        'rate': 4.9,
        'price': 30,
        'oldPrice': 150,
        'off': 14,
        'productName': 'ProductName',
        'delivery': true,
        'ads': true
      },
      {
        'image': 'assets/image/product.png',
        'shop': 'Elina Shop',
        'owner': true,
        'rate': 4.9,
        'price': 30,
        'oldPrice': 150,
        'off': 14,
        'productName': 'ProductName',
        'delivery': true,
        'ads': true
      },
      {
        'image': 'assets/image/product.png',
        'shop': 'Elina Shop',
        'owner': true,
        'rate': 4.9,
        'price': 30,
        'oldPrice': 150,
        'off': 14,
        'productName': 'ProductName',
        'delivery': true,
        'ads': true
      },
      {
        'image': 'assets/image/product.png',
        'shop': 'Elina Shop',
        'owner': true,
        'rate': 4.9,
        'price': 30,
        'oldPrice': 150,
        'off': 14,
        'productName': 'ProductName',
        'delivery': true,
        'ads': false
      },
      {
        'image': 'assets/image/product.png',
        'shop': 'Elina Shop',
        'owner': false,
        'rate': 4.9,
        'price': 30,
        'oldPrice': 0,
        'off': 0,
        'productName': 'ProductName',
        'delivery': false,
        'ads': true
      },
    ];
    product = rawData.map((data) => ProductModel.fromMap(data)).toList();
    notifyListeners();
  }
}

// ues http
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
//
// class ProductProvider extends ChangeNotifier {
//   List<ProductModel> product = [];
//
//   Future<void> fetchProduct() async {
//     try {
//       // Make an API request to fetch seller data
//       final response = await http.get(Uri.parse(''));
//
//       // Check if the request was successful
//       if (response.statusCode == 200) {
//         final rawData = json.decode(response.body) as List<dynamic>;
//
//         product = rawData.map((data) => ProductModel.fromMap(data)).toList();
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
//
// class ProductProvider extends ChangeNotifier {
//   List<ProductModel> product = [];
//
//   Future<void> fetchProduct() async {
//     try {
//       // Fetch seller data from Firebase Firestore collection
//       final QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore.instance
//           .collection('sellers')
//           .get();
//
//       product = snapshot.docs.map((doc) => ProductModel.fromMap(doc.data())).toList();
//       notifyListeners();
//     } catch (error) {
//       // Handle any exceptions that occurred during the request
//       print('Failed to fetch sellers. Error: $error');
//     }
//   }
// }
