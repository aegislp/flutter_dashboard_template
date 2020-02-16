import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:template1/pages/dashboard_page.dart';
import 'package:template1/pages/home_page.dart';
import 'package:template1/pages/scroll_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Color.fromRGBO(236, 98, 188, 0.5),
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'dash',
      routes: {
        '/': (BuildContext context)=> HomePage(),
        'scroll': (BuildContext context)=> ScrollPage(),
        'dash': (BuildContext context)=> DashBoard(),

      },
    );
  }
}