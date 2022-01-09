import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roll_dice/Directory/routes.dart';
import 'package:roll_dice/pages/splash.dart';
void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  routes: {
    "/":(context)=> loaders(),
  },

));
class back extends StatefulWidget {
  const back({Key? key}) : super (key: key);

  @override
  State<back> createState() => _backState();
}

class _backState extends State<back> {
  int random=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title:const Text('Roll Dice'),
          titleTextStyle:const TextStyle(color:Colors.black,letterSpacing: 1.0,fontWeight:FontWeight.bold,fontSize: 20.0),
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin:Alignment.topCenter,end:Alignment.bottomCenter,colors:[
                Colors.white70,
                Colors.amber,
              ])
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('assets/img$random.png'),
              Text('Your dice number:$random',style:const TextStyle(
                color:Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,

              ),
              ),

              RaisedButton(
                onPressed: (){
                  setState(() {
                    random=Random().nextInt(6)+1;
                  });
                },

                color: Colors.black,
                child: Text('Start',style:TextStyle(
                  color:Colors.white,
                  fontWeight: FontWeight.bold,

                )),
              ),
            ],
          ),
        ),

    );

  }
}


