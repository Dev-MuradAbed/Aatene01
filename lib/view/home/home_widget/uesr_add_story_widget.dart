import 'package:flutter/material.dart';

class UserAddStory extends StatelessWidget {
  const UserAddStory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                    image: DecorationImage(image: AssetImage('assets/image/profile.png'))

                ),
              ),
              Container(
                height: 24,
                width: 24,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    border: Border.all(color:Colors.white )
                ),
                child: Icon(Icons.add,color: Colors.white,size: 18,),
              )
            ],
          ),
          SizedBox(height: 5,),
          Text("your Story",style: TextStyle(fontSize: 11),)
        ],
      ),
    );
  }
}
