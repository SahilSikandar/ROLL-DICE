import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:roll_dice/Directory/routes.dart';
import 'package:roll_dice/pages/back.dart';
class loaders extends StatefulWidget {
  const loaders({Key? key}) : super(key: key);

  @override
  _loadersState createState() => _loadersState();
}

class _loadersState extends State<loaders> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>back()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient:LinearGradient(begin: Alignment.bottomCenter,end: Alignment.topCenter,colors:[

          Colors.orangeAccent,
          Colors.deepPurpleAccent,
        ])
      ),
child:SpinKitFoldingCube(
  color:Colors.white,
),
      );
  }
}
