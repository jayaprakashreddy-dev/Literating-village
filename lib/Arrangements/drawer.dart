import 'dart:io';

import 'package:carigari_admin/Arrangements/Size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';




// void loggingOut(BuildContext context) {
//                     // ca
//                      FirebaseAuth.instance
//                                .signOut()
//                   // Navigator.pushNamed(context, "ScreenSelection");
//                                .then((result) =>
//                                   //  Navigator.pushReplacementNamed(context, "Splash")
                                  
//                                    Navigator.pushReplacementNamed(context, "ScreenSelection")
//                                    )
//                                .catchError((err) => print(err));  
//                 // exit(0);
//                 Navigator.of(context).pop();
  
// }



Widget theDrawer(BuildContext context)
{
  void show() {
    // flutter defined function
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext ctxt) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Logout",style: TextStyle(fontSize:SizeConfig.blockSizeVertical * 2.5),),
          content: new Text("Are you sure you want to Logout from the APP",style: TextStyle(fontSize: 14.0),),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("NO"),
              onPressed: () {
                 Navigator.of(context, rootNavigator: true).pop(true);

            //                     Navigator.of(context).pop();
            //     Navigator.push(
            //   ctxt,
            //   new MaterialPageRoute(builder: (ctxt) => new HomeScreen()),
            // );
                // Navigator.of(context).pop();
              //  Navigator.pushNamed(context, "ContactUs");
              },
            ),
            new FlatButton(
              child: new Text("Yes, Logout"),
              onPressed: () async {
                print("clicked yes");
                // loggingOut(context);
              //    await FirebaseAuth.instance
              //                  .signOut()
              //     // Navigator.pushNamed(context, "ScreenSelection");
              //                  .then((result) =>
              //                     //  Navigator.pushReplacementNamed(context, "Splash")
                                  
              //                     //  Navigator.pushReplacementNamed(context, "ScreenSelection")
              //                     null
              //                      )
              //                  .catchError((err) => print(err));  
              //   // exit(0);
              // print("after");
              //   Navigator.pushReplacementNamed(context, "ScreenSelection");
              //   print("success");
              },
            ),
            
          ],
        );
      },
    );
  }

    return Drawer(
          child: new ListView(
            children: <Widget>[
              
                          //  new ListTile(
                          //    leading: Icon(Icons.account_box,color:Colors.green),
                          //    title: new Text("My Account"),
                          //    // title: new Text('My Account',style:TextStyle(color:Colors.black),),
                          //    onTap: () {
                          //      Navigator.pushNamed(context,'AccountInfo');
                          //    },
                          //  ),
                           // new Divider(),
                           new ListTile(
                             leading: Icon(Icons.account_box,color:Colors.green),
                             title: new Text("Change Mode"),
                             // title: new Text('My Account',style:TextStyle(color:Colors.black),),
                             onTap: () {
                               Navigator.pushNamed(context, "TopFirstScreen");
                              //  Navigator.pushNamed(context,'AccountInfo');
                             },
                           ),
                           new Divider(),
                           new ListTile(
                             leading: new Icon(Icons.call,color: Colors.red,),
                             title: new Text('Contact Us'),
                             onTap: () {
                               Navigator.pushNamed(context, "ContactUs");
                             },
                           ),
                           new ListTile(
                             
                             title: new Text('Live Chat'),
                             leading: new Icon(Icons.chat_bubble_outline),
                             onTap: () {
                               print("whats app");
                             //  var whatsappUrl ="whatsapp://send?phone=$phone";
                         canLaunch("whatsapp://send?phone=+0919010590693") != null? launch("whatsapp://send?phone=+0919010590693"):print("open whatsapp app link or do a snackbar with notification that there is no whatsapp installed");
               // need to work if it wont work
                             },
                           ),
                           new ListTile(
                             leading: new Icon(Icons.edit),
                             title: new Text('Feedback '),
                             onTap: () {
                               Navigator.pushNamed(context, 'ContactForm');
                             },
                           ),
                           new ListTile(
                             leading: new Icon(Icons.code),
                             title: new Text('About'),
                             onTap: () {
                               Navigator.pushNamed(context, 'AboutScreen');
                             },
                           ),
                           new ListTile(
                             leading: new Icon(Icons.add_alert),
                             title: new Text('Notifications'),
                             onTap: () {
                               Navigator.pushNamed(context, 'Notification');
                             },
                           ),
                           // new Divider(color:Colors.red,),
                           new ListTile(
                             leading: new Icon(Icons.live_help),
                             title: new Text('Help'),
                             onTap: () {
                               Navigator.pushNamed(context, 'Help');
                             },
                           ),
                            new ListTile(
                             title: new Text('Privacy Policy'),
                             onTap: () {
                               Navigator.pushNamed(context,'Privacy');
                             },
                           ),
             
                        //  new ListTile(
                        //    title: new Text('Logout'),
                        //    onTap: () {
                        //      show();
                        //       },
                        //                  ),
                                         
                                       ],
                                     ),
                                     );
                             }
    
                

