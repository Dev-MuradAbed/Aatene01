import 'package:flutter/material.dart';

import 'custom_user_story_widget.dart';
import 'uesr_add_story_widget.dart';

class StorySection extends StatelessWidget {
  List userList = [
    'assets/image/profile.png',
    'assets/image/profile.png',
    'assets/image/profile.png',
    'assets/image/profile.png',
    'assets/image/profile.png',
  ];
   StorySection({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          children: [
            UserAddStory(),
            Row(
                children: userList.map((e) => CustomUserStory(image: e,)).toList()


            ),

          ],
        ),
      ),
    );
  }
}
