import 'package:diaa_project/view/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  @override
  _HiddenDrawerState createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> items = [];
  final List<String> imagePaths = [
    'assets/icon/vector.png',
    'assets/icon/bill.png',
    'assets/icon/favorite.png',
    'assets/icon/img.png',
  ];
  @override
  void initState() {
    items = [
      // ScreenHiddenDrawer(
      //     ItemHiddenMenu(
      //         name: 'home', baseStyle: TextStyle(), selectedStyle: TextStyle()),
      //     HomeScreen())
    ];
    super.initState();
  }

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
    return HiddenDrawerMenu(
      contentCornerRadius: 25,
      elevationAppBar: 0,
      actionsAppBar: actionIcons,
      screens: items,
      backgroundColorMenu: Color(0xFF0B3E91),
      initPositionSelected: 0,
      tittleAppBar: Text(
        "jerusalemlll",
        style: TextStyle(color: Color(0xFF1F2937)),
      ),
      backgroundColorAppBar: Colors.transparent,
      typeOpen: TypeOpen.FROM_LEFT,
      leadingAppBar: Icon(
        Icons.menu,
        color: Color(0xFF1F2937),
      ),
    );
  }

}
