import 'package:flutter/material.dart';
import 'package:instagram/modules/extra/mobile_app.dart';
//import 'package:instagram/mobile_app2.dart';


import 'constants/app_route.dart';
//import 'monday_class.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        //home: MondayClass()
      initialRoute: AppRoute.home,
      routes: AppRoute.getAppRoutes(),
    );
  }
}
