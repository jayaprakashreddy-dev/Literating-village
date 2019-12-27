import 'package:carigari_admin/Interface/AddCategory.dart';
import 'package:carigari_admin/Interface/EditScreen.dart';
import 'package:carigari_admin/Interface/HomeScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

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
      home: HomeScreen(title: 'Literating Village'),
      routes: <String,WidgetBuilder>
      {
        'HomeScreen':(BuildContext context)=> new HomeScreen(),
        'AddCategory':(BuildContext context)=> new AddCategory(),
        'EditScreen':(BuildContext context)=> new EditCategory(),
      },
    );
  }
}

