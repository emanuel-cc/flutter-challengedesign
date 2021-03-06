import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:side_menu/src/models/layout_model.dart';
// import 'package:side_menu/src/pages/fab_circular_page.dart';
import 'package:side_menu/src/routes/main_routes.dart';
// import 'package:side_menu/src/pages/side_menu_page.dart';
 
void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_)=>LayoutModel()
      )
    ],
    child: MyApp(),
  )
  
);
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',
      routes: routes,
      // home: FabCircularMenuPage(),
      //darkTheme: ThemeData.dark(),
    );
  }
}