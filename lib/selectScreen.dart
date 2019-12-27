import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SelectFirstscreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Village Information"),
      //   backgroundColor: Colors.orangeAccent,
      // ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          Container(
            height:MediaQuery.of(context).size.height* 0.40,
            child: GestureDetector(
              onTap: () {

                           
                          Navigator.pushNamed(context, "InterfaceHomeScreen");
                        
                        // Navigator.of(context).pushNamed(
                        //   // ProductDetailScreen.routeName,
                        //   // arguments: id,
                        // );
                      },
                          child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height* 0.05
                , left: MediaQuery.of(context).size.width* 0.05, right: MediaQuery.of(context).size.width* 0.05,),
                elevation: 2.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: GridTile(
                    child: Image.network(
                      'https://2.bp.blogspot.com/-UQ_8m5wg2X0/W8XMcvEIK1I/AAAAAAAABf0/G-YRvkV6UZ4TUBvTnPf5pTlemcYbGpEOQCK4BGAYYCw/s1600/Schemes%2Bof%2BRural%2BIndia........Highlights.jpg',
                      fit: BoxFit.fill,
                    ),
                    footer: GestureDetector(
                         onTap: () {

                           
                          Navigator.pushNamed(context, "InterfaceHomeScreen");
                        
                        // Navigator.of(context).pushNamed(
                        //   // ProductDetailScreen.routeName,
                        //   // arguments: id,
                        // );
                      },
                                        child: Container(
                        height: MediaQuery.of(context).size.height* 0.10,
                        child: GridTileBar(
                          backgroundColor: Colors.black38,
                          // leading:
                          //  IconButton(
                          //   icon: Icon(Icons.favorite),
                          //   color: Theme.of(context).accentColor,
                          //   onPressed: () {},
                          // ),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "SELLER/BUYER INTERFACE",
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height* 0.04, fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center,
                              ),
                              //  Text(
                              //   "INFO",
                              //   style: TextStyle(
                              //       fontSize:  MediaQuery.of(context).size.height* 0.04, fontWeight: FontWeight.w400),
                              //   textAlign: TextAlign.center,
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height* 0.40,
            child: GestureDetector(
               onTap: () {
                          Navigator.pushNamed(context, "InfoSelectScreen");
                        // Navigator.of(context).pushNamed(
                        //   // ProductDetailScreen.routeName,
                        //   // arguments: id,
                        // );
                      },
                            
                          child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                margin:EdgeInsets.only(top: MediaQuery.of(context).size.height* 0.05
                , left: MediaQuery.of(context).size.width* 0.05, right: MediaQuery.of(context).size.width* 0.05,),
                elevation: 4.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: GridTile(
                    child: Image.network(
                      'https://www.jagranjosh.com/imported/images/E/Articles/Ministry-of-Rural-Development.jpg',
                      fit: BoxFit.fill,
                      
                    ),
                    footer: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "InfoSelectScreen");
                        // Navigator.of(context).pushNamed(
                        //   // ProductDetailScreen.routeName,
                        //   // arguments: id,
                        // );
                      },
                                        child: Container(
                        height: MediaQuery.of(context).size.height* 0.10,
                        child: GridTileBar(
                          backgroundColor: Colors.black38,
                          // leading:
                          //  IconButton(
                          //   icon: Icon(Icons.favorite),
                          //   color: Theme.of(context).accentColor,
                          //   onPressed: () {},
                          // ),
                          title: Text(
                            "VILLAGE DEVELOPMENT",
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height* 0.04, fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
     
    );
  }
}
