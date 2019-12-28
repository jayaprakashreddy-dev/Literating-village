import 'package:carigari_admin/Arrangements/drawer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' ;
import 'package:url_launcher/url_launcher.dart';
import '../Arrangements/variables.dart'as global;
// import '../Arrangements/variables.dart';

class SubCategory extends StatefulWidget{
  // SubCategory([int index]);

  @override
  _SubCategoryState createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {

  
  
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

 

  @override
  Widget build(BuildContext context) {
  
    // TODO: implement build
    return Scaffold(
      key: _scaffoldkey,
      appBar: new AppBar(
        backgroundColor: Color(0XFFFFAB00),
        title: new Text(global.category[global.TempIndex].data['name']),
      ),
      drawer: theDrawer(context),
      // bottomNavigationBar: bottomnavigation(context, 2),
      body: WillPopScope(
        onWillPop: ()
        {
          Navigator.pushNamed(context,"InterfaceHomeScreen");
        },
        child: ListView(
          children: <Widget>[
            // Text(global.category[0].data['a']),
            // Text("\n"),
            Padding(
              padding: EdgeInsets.only(top: 10.0,left: 20.0),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/10,
              width: MediaQuery.of(context).size.width*1,
              child:Text("  Product Description for "+global.category[global.TempIndex].data['name'],style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 25.0
                            //  SizeConfig.blockSizeVertical * 2.9,
                          ),),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width*1,
              child: Image.network(global.category[global.TempIndex].data['image']==null?"https://krishijagran.com/media/17756/crops.jpg?format=webp":global.category[global.TempIndex].data['image']),
            ),Divider(),
            // Image.network(global.category[0].data['image']),
            Padding(padding: EdgeInsets.only(left: 20),
            child: Text("Price:  ₹ "+global.category[global.TempIndex].data['price'],style: TextStyle(
                            color: Colors.pink,
                            fontWeight: FontWeight.w600,
                            fontSize:20.0
                            //  SizeConfig.blockSizeVertical * 2.9,
                             )
                            ),),
            
            
              Divider(),
              Padding(padding: EdgeInsets.only(left: 20),
              child: SizedBox(
              
              height: MediaQuery.of(context).size.height/15,
              child: Text("Description:     .....",style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0
                            //  SizeConfig.blockSizeVertical * 2.9,
                             )),


              ),     ),
               Padding(padding: EdgeInsets.only(left: 20),
              child: SizedBox(
              
              height: MediaQuery.of(context).size.height/15,
              child: Text("Farmers Name:     "+global.category[global.TempIndex].data['farm'],style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0
                            //  SizeConfig.blockSizeVertical * 2.9,
                             )),


              ),     ),
             
              Divider(),     
            
          ],
          // child: Text(global.category[0].data['a']),
        ),
      ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          // AddCategory();
          launch("tel:+919010590694");
          // Navigator.pushNamed(context, "AddCategory");
        },
        tooltip: 'phone',
        child: Icon(Icons.phone),
      ),
    );
  }

  // void CallForAdding() {
                                  
  // }
}