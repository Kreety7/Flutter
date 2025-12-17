import 'package:flutter/material.dart';
import 'package:instagram/constants/app_route.dart';
//import 'package:pinterest/identity_card.dart';
import 'package:instagram/modules/extra/monday_class.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA0BEFF),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Home Page',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(
              context,
              AppRoute.login,
            );
          }, child: Text('Login')),
          // ElevatedButton(onPressed: () {
          //   Navigator.pushNamed(
          //     context,
          //     AppRoute.identityCard,
          //   );
          // }, child: Text('Identity Card')),
          ElevatedButton(onPressed: () {

          }, child: Text('Monday Class')),
           ElevatedButton(onPressed: () {
             Navigator.pushNamed(
                 context,
                 AppRoute.signup,
             );

           }, child: Text('Signup')),

        ],
      ),
    );
  }
}