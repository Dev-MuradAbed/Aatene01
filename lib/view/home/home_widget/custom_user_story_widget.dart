import 'package:flutter/material.dart';

class CustomUserStory extends StatelessWidget {
  final String? image;
  const CustomUserStory({
    this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [
                          Color(0XFFDE0046),
                          Color(0XFFF7A34B),

                        ]
                    )
                ),
              ),
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                    border: Border.all(color: Colors.white,width: 2),
                    image: DecorationImage(image: AssetImage('$image'))

                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Text("Story",style: TextStyle(fontSize: 11),)
        ],

      ),
    );
  }
}
