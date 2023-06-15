import 'package:flutter/material.dart';

class ClassificationsWidget extends StatelessWidget {
  const ClassificationsWidget({
    super.key, required this.classification,
  });
  final List<Map<String, dynamic>> classification;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      width: double.infinity,
      child: Wrap(
          runSpacing: 15,
          spacing: 9,
          alignment: WrapAlignment.center,
          children: classification
              .map((item) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(item['image']))),
              ),
              SizedBox(
                height: 5,
              ),
              Text(item['text'], style: TextStyle(fontSize: 11)),
            ],
          ))
              .toList()),
    );
  }
}
