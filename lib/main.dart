import 'package:flutter/material.dart';
import 'package:roll_dice/pages/splash.dart';
import 'package:roll_dice/pages/back.dart';
import 'package:roll_dice/Directory/routes.dart';


void main()=>runApp(const MaterialApp(
  home:Home(),
  debugShowCheckedModeBanner: false,

));
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
       "/":(context)=>const loaders(),
        Routes.backRoute:(context)=> const back(),
      },
    );


  }
}


