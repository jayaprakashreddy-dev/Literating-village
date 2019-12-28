// import 'dart:html';
import 'dart:io';
import './Interface/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SelectFirstscreen extends StatelessWidget {
  var _dropforms = ['Village1'];
  var _dropformSelected = "Village1";

  @override
  Widget build(BuildContext context) {
    void show() {
      // flutter defined function
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext ctxt) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text(
              "Exit Page",
              style: TextStyle(
                fontSize: 20.0,
                // SizeConfig.blockSizeVertical * 2.5
              ),
            ),
            content: new Text(
              "Are you sure you want to exit from the APP",
              style: TextStyle(fontSize: 14.0),
            ),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new FlatButton(
                child: new Text("NO"),
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop(true);
                  //   ctxt,
                  //   new MaterialPageRoute(builder: (ctxt) => new Privacy()),
                  // );
                  Navigator.pushNamed(context, "TopFirstScreen");
                  // Navigator.pop(context);
                },
              ),
              new FlatButton(
                child: new Text("YES, EXIT"),
                onPressed: () {
                  exit(0);
                  // Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Village Information"),
        //   backgroundColor: Colors.orangeAccent,
        // ),
        body: WillPopScope(
      onWillPop: () {
        // Navigator.pushNamed(context,'TopFirstScreen');
        show();
      },
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 50.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Select by Village",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  DropdownButton<String>(
                    items: _dropforms.map((String dropDownStringItem) {
                      return DropdownMenuItem<String>(
                        value: dropDownStringItem,
                        child: Text(
                          dropDownStringItem,
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w500),
                        ),
                      );
                    }).toList(),
                    onChanged: (String newValueSelected) {
                      this._dropformSelected = newValueSelected;
                      // setState(() {

                      //   this._dropformSelected =newValueSelected;
                      // });
                    },
                    value: _dropformSelected,
                  ),
                ],
              )),
          Container(
            height: MediaQuery.of(context).size.height * 0.40,
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
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                ),
                elevation: 2.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: GridTile(
                    child: Image.asset(
                      "assets/images/sellFarm.jpg",
                      fit: BoxFit.fitHeight,
                    ),
                    // Image.network(
                    //   'https://2.bp.blogspot.com/-UQ_8m5wg2X0/W8XMcvEIK1I/AAAAAAAABf0/G-YRvkV6UZ4TUBvTnPf5pTlemcYbGpEOQCK4BGAYYCw/s1600/Schemes%2Bof%2BRural%2BIndia........Highlights.jpg',
                    //   fit: BoxFit.fill,
                    // ),
                    footer: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "InterfaceHomeScreen");

                        // Navigator.of(context).pushNamed(
                        //   // ProductDetailScreen.routeName,
                        //   // arguments: id,
                        // );
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.10,
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
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.92,
                                child: Text(
                                  "SELLER/BUYER INTERFACE",
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.031,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
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
            height: MediaQuery.of(context).size.height * 0.40,
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
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                ),
                elevation: 4.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: GridTile(
                    child: Image.asset(
                      "assets/images/info.jpg",
                      fit: BoxFit.fitHeight,
                    ),
                    // child: Image.network(
                    //   'https://www.jagranjosh.com/imported/images/E/Articles/Ministry-of-Rural-Development.jpg',
                    //   fit: BoxFit.fill,

                    // ),
                    footer: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "InfoSelectScreen");
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.10,
                        child: GridTileBar(
                          backgroundColor: Colors.black38,
                          title: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.82,
                            child: Text(
                              "VILLAGE DEVELOPMENT",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.031,
                                  fontWeight: FontWeight.w400),
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
          ),
        ],
      ),
    ));
  }
}
