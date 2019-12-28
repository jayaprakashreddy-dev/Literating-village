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
          title: Text("Help"),
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

                            SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 18),
                  child: Text(
                    '1.if you wanna sell a crop\n  A.click on seller/buyers logo\n  B.next click on “+” add u r crop details like price,crop name,number etc.,\n  C.click on “Submit” button to upload u r details\n2.if you wanna buy a crop\n  A.click on seller/buyers logo\n  B.you will find list of crops\n  C.select on the crop you required \n  D.there you will find all the details of that product there\n  E.if u r willing to buy make a call to that farmer\n\n**YOU WANT TO KNOW ABOUT THE SCHEMES AND VILLAGES INFO\n>click on village information\n:if u want to know about schemes\n A.click on schemes info\nB.you will find the list of schemes \nC.click on the require scheme\n:if u want to know about villages\n A.click on village info\nB.you will observe village details',
                    
                    // global.scheme[index].data['desc'],
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        height: 1.5,
                        letterSpacing: 1.2),
                        
                    textAlign: TextAlign.justify,
                  ),
                ),
            // Text("\n\n\n   Information need to be updated",style: TextStyle(fontSize:20.0,
            // // SizeConfig.blockSizeVertical * 2.5,
            // color: Colors.green),),
          ],
        ),
        ),
      )
    );
  }
}