import 'package:flutter/material.dart';

class ShowItemWidget extends StatelessWidget {
  const ShowItemWidget({
    super.key, required this.items,
  });
  final List<Map<String, dynamic>> items;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      width: double.infinity,
      child: Wrap(
          runSpacing: 15,
          spacing: 9,
          alignment: WrapAlignment.center,
          children: items
              .map((item) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: 1, color: Color(0xFFD4D4D4))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                        image:
                        AssetImage(item['image'])),
                    Text(item['text'])
                  ],
                ),
              ),
            ],
          ),).take(7)
              .toList()),
    );
  }
}