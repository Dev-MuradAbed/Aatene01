import 'package:flutter/material.dart';

import 'drawer_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerItems {
  static const followers = DrawerItem(title: 'المتابعون', icon: FontAwesomeIcons.house);
  static const lecturers = DrawerItem(title: 'المحظورين', icon: Icons.explore);
  static const categories = DrawerItem(title: 'كل الفئات', icon: Icons.favorite);
  static const traders = DrawerItem(title: 'التجار', icon: Icons.mail);
  static const watchHistory =DrawerItem(title: 'سجل المشاهدات', icon: FontAwesomeIcons.userLarge);
  static const beATrader = DrawerItem(title: 'كن تاجر', icon: Icons.settings);
  static const  help = DrawerItem(title: 'مساعدة', icon: Icons.logout);
  static const  howToImprove = DrawerItem(title: 'كيف نتحسن', icon: Icons.logout);
  static const  settings = DrawerItem(title: 'الاعدادات', icon: Icons.logout);
  static const  logout = DrawerItem(title: 'تسجيل خروج', icon: Icons.logout);
  static final List<DrawerItem> all = [
    followers,
    lecturers,
    categories,
    traders,
    watchHistory,
    beATrader,
    howToImprove,
    help,
    settings,
    logout
  ];
}
