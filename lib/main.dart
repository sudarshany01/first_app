import 'package:flutter/material.dart';
import 'package:six_app/utils/routes.dart';
import 'package:six_app/widgets/themes.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';




void main() {
  runApp(const MyApp());
}

  class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return  MaterialApp(

        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.lightTheme(context),
        initialRoute: MyRoutes.homeRoute,
        routes:  {
          "/": (context)=> LoginPage(),
          MyRoutes.homeRoute:(context)=>HomePage(),
          MyRoutes.loginRoute:(context)=>LoginPage(),


        },

      );
    }

  }
