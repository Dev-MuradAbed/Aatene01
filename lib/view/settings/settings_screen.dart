import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsScreen extends StatefulWidget {
  final VoidCallback openDrawer;
  const SettingsScreen({Key? key, required this.openDrawer}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool mood = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: AlignmentDirectional.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image(image: AssetImage('assets/svg/logo2.png')),
              SizedBox(
                height: 72,
              ),
              buildListTile(
                  icon: Icons.mode_night,
                  text: "الوضع الليلي",
                  trailing: Switch(
                      value: mood,
                      onChanged: (val) {
                        setState(() {
                          mood = val;
                        });
                      })),
                  buildListTile(
                      icon: Icons.account_box,
                      text: "الحساب",
                      trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))),
                  buildListTile(
                      icon: Icons.notifications,
                      text: "الاشعارات",
                      trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))),
                  buildListTile(
                      icon: Icons.front_loader,
                      text: "البيانات و التخزين",
                      trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))),
                  buildListTile(
                      icon: Icons.error,
                      text: "حول",
                      trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))),
SizedBox(height: 44,),
                  ElevatedButton(onPressed: (){}, child: Text("تسجيل خروج"),style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF2176FF),
                    elevation: 0,
                    minimumSize: Size(300, 44),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),)
            ]),
          ),
        ),
      ),
    );
  }

  Padding buildListTile(
      {required IconData icon, required String text, Widget? trailing = null}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          tileColor: Color(0xFFF4F5F7),
          leading: Icon(icon),
          title: Text(text),
          trailing: trailing),
    );
  }
}
