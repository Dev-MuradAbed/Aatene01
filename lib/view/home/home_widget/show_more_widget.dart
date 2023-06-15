import 'package:flutter/material.dart';

class ShowMore extends StatelessWidget {
  const ShowMore({
    required this.showMore,
    required this.onPressed,
    super.key,
  });
  final String? showMore;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            showMore ?? '',
            style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1B1B1B)),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              "عرض المزيد",
              style: TextStyle(fontSize: 14, color: Color(0xFF2176FF)),
            ),
          )
        ],
      ),
    );
  }
}