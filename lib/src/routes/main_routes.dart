import 'package:flutter/material.dart';
import 'package:side_menu/src/pages/fab_circular_page.dart';
import 'package:side_menu/src/pages/food-drink_page.dart';
import 'package:side_menu/src/pages/home_page.dart';
import 'package:side_menu/src/pages/side_menu_page.dart';
import 'package:side_menu/src/pages/weather_page.dart';

final routes = {
  '/'                 : (BuildContext context) => HomePage(),
  'sidemenu'          : (BuildContext context) => SideMenuPage(),
  'fabcircmenu'       : (BuildContext context) => FabCircularMenuPage(),
  'weather'           : (BuildContext context) => WeatherPage(),
  'foodmenu'          : (BuildContext context) => FoodDrinkPage()
};