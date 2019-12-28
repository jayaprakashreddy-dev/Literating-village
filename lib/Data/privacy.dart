import 'package:carigari_admin/Arrangements/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Privacy extends StatefulWidget
{
  @override
  _PrivacyState createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Privacy Policy"),
          backgroundColor:Colors.orange[300],
        ),
        // bottomNavigationBar: bottomnavigation(context,1),
        drawer: theDrawer(context),
        body:WillPopScope(
          onWillPop: (){
            Navigator.pushNamed(context, 'HomeScreen');
          },
        child:Column(
          children: <Widget>[
            Text("\n\n\n Need to be updated",style: TextStyle(fontSize:20.0,
            // SizeConfig.blockSizeVertical * 2.5,
            color: Colors.green),),
          ],
        ),
        ),
      )
    );
  }
}