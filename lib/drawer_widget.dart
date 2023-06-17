import 'package:diaa_project/GlobalWidget/draw_line_widget.dart';
import 'package:diaa_project/drawer_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'drawer_item.dart';

class DrawerWidget extends StatefulWidget {
  final ValueChanged<DrawerItem> onSelectedItem;
  final DrawerItem selectedItem;
  const DrawerWidget({Key? key, required this.onSelectedItem, required this.selectedItem}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
      child: SingleChildScrollView(
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(1, 0, 44, 10),
            child: Image(image: AssetImage('assets/svg/logo.png')),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 3,color: Colors.white),
                      image: DecorationImage(image: AssetImage('assets/image/profile.png'))
                    ),
                    height: 57,
                    width: 57,
                  ),
                  SizedBox(
                    width: 180,
                    child: ListTile(
                      title: Text("Murad Abed",style: TextStyle(fontSize: 18,color: Colors.white)),
                      subtitle: Text("فلسطين ، غزة",style: TextStyle(fontSize: 16,color: Colors.white),),
                      trailing: CircleAvatar(
                        backgroundColor: Color(0xFFB7CFEE),
                        radius: 17,
                        child: Icon(Icons.edit,size: 14,color: Color(0xFF000000)),
                      ),

                    ),
                  )
                ],
              ),
            ),
          ),

          // SvgPicture.asset(
          //   'assets/svg/logo.svg',
          //   colorFilter: const ColorFilter.mode(
          //     Colors.black,
          //     BlendMode.srcIn,
          //   ),
          // ),
            DrawLineWidget(),
            buildDrawerItems(context)
          ],
        ),
      ),
    );
  }

  Widget buildDrawerItems(BuildContext context)=>Column(
    children: DrawerItems.all.map((item) =>item!=DrawerItems.lecturers && item!=DrawerItems.settings? Container(
      decoration: BoxDecoration(
        color: widget.selectedItem ==item ? Color(0x2B000000) : Colors.transparent,
        borderRadius: BorderRadius.circular(7)
      ),
      child: ListTile(
        leading: Icon(item.icon,color: Colors.white,size: 18),
        title: Text(
          item.title,
          style: TextStyle(color: Colors.white,fontSize: 16),
        ),
        trailing:item==DrawerItems.followers? Container(
          height: 20,
          width: 31,
          decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10),
            color: Color(0xFFB7CFEE)
          ),
          child: Center(child: Text("10",style: TextStyle(fontSize: 14,color: Color(0xFF2E419D)),)),
        ):null,
        onTap: ()=>widget.onSelectedItem(item),
      )
    ):Column(
      children: [
        Container(
            decoration: BoxDecoration(
                color: widget.selectedItem ==item ? Color(0x2B000000) : Colors.transparent,
                borderRadius: BorderRadius.circular(7)
            ),
            child: ListTile(
              trailing:item==DrawerItems.lecturers? Container(
                height: 20,
                width: 31,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFB7CFEE)
                ),
                child: Center(child: Text("10",style: TextStyle(fontSize: 14,color: Color(0xFF2E419D)),)),
              ):null,

              leading: Icon(item.icon,color: Colors.white,size: 18),
              title: Text(
                item.title,
                style: TextStyle(color: Colors.white,fontSize: 16),
              ),
              onTap: ()=>widget.onSelectedItem(item),
            )
        ),
        DrawLineWidget()
      ],
    )).toList()
  );
}
