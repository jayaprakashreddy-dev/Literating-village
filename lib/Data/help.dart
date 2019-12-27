import 'package:carigari_admin/Arrangements/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Help extends StatefulWidget
{
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Information"),
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
            Text("\n\n\n Information need to be updated",style: TextStyle(fontSize:20.0,
            // SizeConfig.blockSizeVertical * 2.5,
            color: Colors.green),),
          ],
        ),
        ),
      )
    );
  }
}