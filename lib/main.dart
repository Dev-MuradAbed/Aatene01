import 'package:diaa_project/drawer_item.dart';
import 'package:diaa_project/drawer_items.dart';
import 'package:diaa_project/provider/product_provider.dart';
import 'package:diaa_project/provider/seller_provider.dart';
import 'package:diaa_project/view/help/help_screen.dart';
import 'package:diaa_project/view/home/drawer_menu_widget.dart';
import 'package:diaa_project/view/home/home_screen.dart';
import 'package:diaa_project/view/home/home_widget/hidden_drawer_widget.dart';
import 'package:diaa_project/view/howToImprove/how_to_improve_scrren.dart';
import 'package:diaa_project/view/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'drawer_widget.dart';

void main() {
  // Provider.debugCheckInvalidValueType = null;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SellerProvider()),
        ChangeNotifierProvider(create: (context) => ProductProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: Directionality(textDirection: TextDirection.rtl, child: MainPage()
            // HiddenDrawer()
            ),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late double xOffset;
  late double yOffset;
  late double scaleFactor;
  late bool isDrawerOpen;
  DrawerItem item =DrawerItems.followers;

  bool isDragging = false;
  @override
  void initState() {
    super.initState();
    closeDrawer();
  }

  void openDrawer() {
    setState(() {
      //when we want open Drawer from left to right execute this code
      // xOffset =230;
      // yOffset =150;
      // scaleFactor =0.7;
      //when we want open Drawer from right to left execute this code
      xOffset = -170;
      yOffset = 82;
      scaleFactor = 0.7;
      isDrawerOpen = true;
    });
  }

  void closeDrawer() {
    setState(() {
      xOffset = 0;
      yOffset = 0;
      scaleFactor = 1;
      isDrawerOpen = false;
    });
  }
  final List<String> actionPaths = [
    'assets/icon/vector.png',
    'assets/icon/bill.png',
    'assets/icon/favorite.png',
    'assets/icon/img.png',
  ];
  @override
  Widget build(BuildContext context) {
    List<Widget> actionIcons = List.generate(4, (index) {
      return IconButton(
        onPressed: () {},
        icon: Image.asset(
          actionPaths.reversed.toList()[index],
          width: 21.6,
          height: 19.2,
        ),
      );
    });
    return
      Scaffold(
        appBar:!isDrawerOpen&&scaleFactor==1?AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text('shvajv',style: TextStyle(color:!isDrawerOpen&&scaleFactor==1? Colors.black:Colors.transparent),),
          actions: actionIcons,

          leading: IconButton(onPressed: openDrawer, icon: Icon(Icons.menu),color: !isDrawerOpen&&scaleFactor==1?Color(0xFF1F2937):Colors.transparent,),
        ):null,
         body: Container(
             decoration: const BoxDecoration(
               gradient: LinearGradient(
                 begin: Alignment.topLeft,
                 end: Alignment.bottomRight,
                 colors: [
                   Color(0xFF2176FF), // Start color (#2176FF)
                   Color(0xFF0B3E91), // End color (#0B3E91)
                 ],
                 stops: [
                   0.036, // Stop position for the start color (3.6%)
                   0.515, // Stop position for the end color (51.5%)
                 ],
                 transform: GradientRotation(164.65), // Gradient rotation in degrees
               ),
             ),
           child: Stack(
             children: [buildDrawer(), buildPage()],
           ),
         ),
       );
  }

  Widget buildDrawer() => SafeArea(child: Container(

    width: 285,
    child: DrawerWidget(onSelectedItem: (item){

     switch(item){
       case DrawerItems.logout:
         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Logging Out")));
         return;
       default:
         setState(() =>this.item =item);
         closeDrawer();
     }

    },selectedItem:this.item),
  ));
  Widget buildPage() {
    return WillPopScope(
      onWillPop: ()async{
        if(isDrawerOpen){
          closeDrawer();
          return false;
        }else{
          return true;
        }
      },
      child: GestureDetector(
        onTap: closeDrawer,
        onHorizontalDragStart: (details) => isDragging = true,
        onHorizontalDragUpdate: (details) {
          if (!isDragging) return;
          const delta = 1;
          //when we want open Drawer from right to left execute this code
          if (details.delta.dx < delta) {
            openDrawer();
          } else if (details.delta.dx > -delta) {
            closeDrawer();
          }
          //when we want open Drawer from left to right execute this code
          // if(details.delta.dx > delta){
          //   openDrawer();
          // }else if(details.delta.dx < -delta){
          //   closeDrawer();
          // }
          isDragging = false;
        },
        child: AnimatedContainer(
            transform: Matrix4.translationValues(xOffset, yOffset, 0)
              ..scale(scaleFactor),
            duration: Duration(milliseconds: 400),
            child: AbsorbPointer(
                absorbing: isDrawerOpen,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(isDrawerOpen?20:0),
                  child: Container(
                      // color: isDrawerOpen?Colors.white:Theme.of(context).primaryColor,
                    color: Colors.white,
                      child: getDrawerPage()),
                ))),
      ),
    );
  }
Widget  getDrawerPage(){
switch(item){
  // case DrawerItems.logout:return LogOutScrren(openDrawer: openDrawer);
  case DrawerItems.help:return HelpScreen(openDrawer: openDrawer);
  case DrawerItems.howToImprove:return HowToImproveScreen(openDrawer: openDrawer);
  case DrawerItems.settings:return SettingsScreen(openDrawer: openDrawer);
  case DrawerItems.followers:
  default:
    return HomeScreen(openDrawer: openDrawer);
}
  }
}
