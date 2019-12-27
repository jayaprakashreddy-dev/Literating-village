import 'package:carigari_admin/Info/SelectInfo.dart';
import 'package:carigari_admin/Interface/AddCategory.dart';
// import 'package:carigari_admin/Interface/EditScreen.dart';
import 'package:carigari_admin/Interface/HomeScreen.dart';
import 'package:carigari_admin/selectScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import './Data/about.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Literating Village',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SelectFirstscreen(),
      // HomeScreen(title: 'Literating Village'),
      routes: <String,WidgetBuilder>
      {
        'InterfaceHomeScreen':(BuildContext context)=> new HomeScreen(),
        'AddCategory':(BuildContext context)=> new AddCategory(),
        // 'EditScreen':(BuildContext context)=> new EditCategory(),
        'AboutScreen':(BuildContext context)=> new About(),
        'InfoSelectScreen':(BuildContext context)=> new SelectInfoscreen(),
        'TopFirstScreen':(BuildContext context)=> new SelectFirstscreen(),
       
      },
    );
  }
}

