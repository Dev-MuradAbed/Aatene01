import 'package:flutter/material.dart';

class ContainerSliderWidget extends StatelessWidget {
  const ContainerSliderWidget({
    super.key,
    required this.itemSlider,
    required this.index,
  });

  final List<Map<String, dynamic>> itemSlider;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
          horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 2,
              blurRadius: 8,
              offset: Offset(4, 4),
            )
          ],
          image: DecorationImage(
              image: AssetImage('${itemSlider[index]['image']}'),
              fit: BoxFit.fill)),
    );
  }
}
class DotSlider extends StatelessWidget {
  const DotSlider({
    super.key,
    required this.itemSlider,
    required this.currentIndex,
  });

  final List itemSlider;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:List.generate(itemSlider.length, (index) => Container(
          height: 13,
          width: 13,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: currentIndex == index
                ? Color(0xFF2176FF)
                : Color(0xFFDBE9FF),
            shape: BoxShape.circle,
          ),
        ))




    );
  }
}
