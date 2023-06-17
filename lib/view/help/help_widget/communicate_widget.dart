
import 'package:flutter/material.dart';

class CommunicateWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const CommunicateWidget({
    super.key, required this.icon, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:25),
      child: Column(
        children: [
          Icon(icon,size: 30,color: Colors.black,),
          SizedBox(height: 10,),
          Text(text,style: TextStyle(fontSize: 15),)
        ],
      ),
    );
  }
}
