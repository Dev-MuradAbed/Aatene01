import 'package:flutter/material.dart';

class DeclarationWidget extends StatelessWidget {
  const DeclarationWidget({

    super.key,required this.image,
  });
  final List<Map<String, dynamic>> image;
  @override
  Widget build(BuildContext context) {
    return Wrap(
        runSpacing: 10,
        children:List.generate(2, (index) =>  Container(
          height: 170,
          width: 337,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: AssetImage(image[index]['image']),
                  fit: BoxFit.cover),
              color: Colors.grey),
        ),
        ));
  }
}
