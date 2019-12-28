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
            Navigator.pushNamed(context, 'TopFirstScreen');
          },
        child:ListView(
          children: <Widget>[
            Container(
              margin:EdgeInsets.only(left:14.0,right:14.0),
              child: Text("We have taken the information from the government portal http://vikaspedia.in/social-welfare/rural-poverty-alleviation-1/schemes  for the related schemes provided in our application.For individual schemes the information  are as follows:--/n1. Mission Antyodaya -http://vikaspedia.in/social-welfare/rural-poverty-alleviation-1/schemes/mission-antyodaya \n 2.National Rurban Mission (NRuM)  - http://vikaspedia.in/social-welfare/rural-poverty-alleviation-1/schemes/national-rurban-mission-nrum\n3.Pradhan Mantri Gram Sadak Yojana - http://vikaspedia.in/social-welfare/rural-poverty-alleviation-1/schemes/pradhan-mantri-gram-sadak-yojana\n4.National Social Assistance Programme - http://vikaspedia.in/social-welfare/rural-poverty-alleviation-1/schemes/national-social-assistance-programme\n5.Prime Minister’s Rural Development Fellowship - http://vikaspedia.in/social-welfare/rural-poverty-alleviation-1/schemes/pmrdfsyou can also refer from this site it is providing valuable information for the benefit of every individual",
              style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w400,height: 1.5,letterSpacing: 1.2),textAlign: TextAlign.justify,),
            )
            // Text("\n\n\n Need to be updated",style: TextStyle(fontSize:20.0,
            // // SizeConfig.blockSizeVertical * 2.5,
            // color: Colors.green),),
          ],
        ),
        ),
      )
    );
  }
}