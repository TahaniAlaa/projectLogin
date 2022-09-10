import 'package:flutter/material.dart';
import 'package:notsapp/card/addnots.dart';
import 'package:notsapp/home.dart';
import 'package:notsapp/sign.dart';
import './login.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     theme: ThemeData(primaryColor: Color(-2011672536)),
     home: Login(),
     routes: {
        "loginpage":(context)=>Login(),
       "signpage":(context)=>Sign(),
       "HomePage":(context)=>Home(),
       "Add":(context)=>Addnots(),
     },
    );
  }
}
