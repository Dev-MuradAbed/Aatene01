import 'package:diaa_project/view/home/home_widget/hidden_drawer_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
   AppBarWidget({Key? key}) : super(key: key);
  final List<String> imagePaths=[
    'assets/icon/vector.png',
    'assets/icon/bill.png',
    'assets/icon/favorite.png',
    'assets/icon/profile.png',
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> actionIcons = List.generate(4, (index) {
      return IconButton(
        onPressed: () {},
        icon: Image.asset(
          imagePaths.reversed.toList()[index],
          width: 21.6,
          height: 19.2,
        ),
      );
    });

    return AppBar(

      backgroundColor: Colors.white,
      elevation: 0,
      leading: HiddenDrawer(),
      actions: actionIcons,
      title: Text(
        "dsnkd",
        style: TextStyle(color: Colors.black),
      ),
      toolbarHeight: kToolbarHeight + MediaQuery.of(context).padding.top,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
