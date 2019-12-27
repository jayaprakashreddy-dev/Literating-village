// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:carigari/Arrangements/Drawer.dart';
// import 'package:carigari/screens/bottomNavigation.dart';
// import 'package:carigari/Arrangements/sizeModification.dart';
// import 'package:flutter/material.dart' as prefix0;

// import 'package:flutter/widgets.dart';
// import "package:flutter/material.dart";
// class ContactForm extends StatefulWidget
// {
//   @override
//   _ContactFormState createState() => _ContactFormState();
// }

// class _ContactFormState extends State<ContactForm> {
//    final GlobalKey<FormState> _contactFormKey = GlobalKey<FormState>();
//    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
//   TextEditingController nameInput;
//   TextEditingController cityInput;
//   TextEditingController phoneNumberInput;
//   TextEditingController emailInput;
//   TextEditingController stateInput;
//   TextEditingController msgInput;



//   @override
//   initState() {
//     nameInput = new TextEditingController();
//     emailInput = new TextEditingController();
//     cityInput=new TextEditingController();
//     phoneNumberInput=new TextEditingController();
//     stateInput=new TextEditingController();
//     msgInput = new TextEditingController();
//     super.initState();
//   }

//   var _dropforms= [
//    'General','Feedback','Corporate','BulkOrder'
//   ]; 
//   var _dropformSelected="General";


//    void callSnackBar(String msg,[int er])
//   {
    
//       // msg="There is no record with this user, please register first by clicking Register";
//       final SnackBar=new prefix0.SnackBar(
//       content: new Text(msg),
//       duration: new Duration(seconds: 3),
//     //   action: new SnackBarAction(label: "Register",
//     //   onPressed: (){
//     //     Navigator.pushNamed(context, "Register");
//     //   },),
//     );
//      _scaffoldKey.currentState.showSnackBar(SnackBar);
//     }

//   @override
//   Widget build(BuildContext context) {
//     TextStyle textStyle = Theme.of(context).textTheme.title;
    
//     // // TODO: implement build
//     // String dropdownValue='One';
        
//         return new Scaffold(
//           key: _scaffoldKey,
          
//           // resizeToAvoidBottomPadding: false,
//                   appBar: AppBar(
//                     title: Text("Contact Form"),
//                     backgroundColor: Colors.green,
//                   ),
//                   drawer: theDrawer(context),
//                   bottomNavigationBar: bottomnavigation(context,1),
//                   body:WillPopScope(
//                   onWillPop:()
//                   {
//                     Navigator.pushNamed(context,'HomeScreen');
                    
//                   },
//                   child: Container(
//                     margin: EdgeInsets.all(SizeConfig.blockSizeVertical*1.5),
//                     child:Form(
//                       key: _contactFormKey,
//                       child: ListView(
//                        children: <Widget>[
//                         Padding(
//                           padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5,bottom:SizeConfig.blockSizeVertical*1.5 ),
//                           child:TextFormField(
//                             controller: nameInput,
//                             validator: nameValidator,
//                             style:textStyle,
//                           // keyboardType: Text(),
//                           decoration: InputDecoration(
//                             labelStyle:textStyle,
//                             labelText: "Full Name",
//                             hintText: "Enter your Name",
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*1.5)
//                             )
//                           ),
//                         ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5,bottom:SizeConfig.blockSizeVertical*1.5 ),
//                       child: TextFormField(
//                           keyboardType: TextInputType.number,
//                           controller: phoneNumberInput,
//                            style:textStyle,
//                           maxLength: 10,
//                            validator: phoneValidator,
//                           decoration: InputDecoration(
//                              labelStyle:textStyle,
//                             labelText: "Mobile",
//                             hintText: "Enter your Mobile Number",
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*1.5)
//                             )
//                           ),
//                         ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5,bottom:SizeConfig.blockSizeVertical*1.5 ),
//                       child: TextFormField(
//                         controller: emailInput,
//                           keyboardType: TextInputType.emailAddress,
//                            style:textStyle,
//                            validator: emailValidator,
//                           decoration: InputDecoration(
//                              labelStyle:textStyle,
//                             labelText: "Email id",
//                             hintText: "Enter your EMail id",
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*1.5)
//                             )
//                           ),
//                         ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5,bottom:SizeConfig.blockSizeVertical*1.5 ),
//                       child: TextFormField(
//                           // keyboardType: TextInputType.number,
//                            style:textStyle,
//                            controller: cityInput,
//                            validator: nameValidator,
//                           decoration: InputDecoration(
//                              labelStyle:textStyle,
//                             labelText: "City",
//                             hintText: "Enter your City",
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*1.5)
//                             )
//                           ),
//                         ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5,bottom:SizeConfig.blockSizeVertical*1.5 ),
//                       child: TextField(
//                           // keyboardType: TextInputType.number,
//                            style:textStyle,
//                           //  controller: ,
//                           decoration: InputDecoration(
//                              labelStyle:textStyle,
//                             labelText: "State(optional)",
//                             hintText: "Enter your State",
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*1.5)
//                             )
//                           ),
//                         ),
//                         ),
//           //               DropdownButton<String>(
//           //                 value: dropdownValue,
//           //                 onChanged: (String newValue)
//           //                 {
//           //                   setState(() {
//           //                    if(newValue!=null)
//           //                       dropdownValue=newValue; 
//           //                   });
//           //                 },
//           //                 items: <String>['General','Feedback','Corporate','BulkOrder']
//           //                 .map<DropdownMenuItem<String>(
//           //                 value: value,
//           //                 child: Text(Value),
//           //                 );
//           // }).tolist());
//           //           )

//           // DropdownButton<String>(
//           //       value: dropdownValue,
//           //       icon: Icon(Icons.arrow_downward),
//           //       iconSize: 24,
//           //       elevation: 16,
//           //       style: TextStyle(
//           //         color: Colors.deepPurple
//           //       ),
//           //       underline: Container(
//           //         height: 2,
//           //         color: Colors.deepPurpleAccent,
//           //       ),
//           //       onChanged: (String newValue) {
//           //         setState(() {
//           //           dropdownValue = newValue;
//           //         });
//           //       },
//           //       items: <String>['One', 'Two', 'Free', 'Four']
//           //         .map<DropdownMenuItem<String>>((String value) {
//           //           return DropdownMenuItem<String>(
//           //             value: value,
//           //             child: Text(value),
//           //           );
//           //         })
//           //         .toList(),
//           //     ),




//                   // Padding(
//                   //     padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5,bottom:SizeConfig.blockSizeVertical*1.5 ),
//                   //     child:DropdownButton(
//                   //                 items: _dropdownValues
//                   //                     .map(
//                   //                       (value) => DropdownMenuItem(
//                   //                           child: Text(value),
//                   //                           value: value,
//                   //                         )
//                   //                         )
//                   //                     .toList(),
//                   //                 onChanged: (String value) {
//                   //                  //
//                   //                 },
//                   //                 isExpanded: false,
//                   //                 hint: Text('Select the category '),
//                   //               ),
//                   // ),

//                 Padding(
//                           padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5,bottom:SizeConfig.blockSizeVertical*1.5 ),
//                       child:DropdownButton<String>(
//                       items: _dropforms.map((String dropDownStringItem)
//                       {
//                          return DropdownMenuItem<String>(
//                             value: dropDownStringItem,
//                             child: Text(dropDownStringItem),

//                          );
//                       }).toList(),
//                       onChanged: (String newValueSelected){
//                         setState(() {
//                           this._dropformSelected =newValueSelected;
//                         });
//                       },
//                       value: _dropformSelected,
//                       ),
//                 ),


//                 Padding(
//                           padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5,bottom:SizeConfig.blockSizeVertical*1.5 ),
//                       child: TextFormField(
//                         controller: msgInput,
//                         validator: nameValidator,
//                          style:textStyle,
//                          maxLines: 3,
//                           // keyboardType: TextInputType.number,
//                           decoration: InputDecoration(
//                              labelStyle:textStyle,
//                             labelText: "Message",
//                             hintText: "Enter Message",
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*1.5)
//                             )
//                           ),
//                         ),
//                         ),

//                   Padding(
//                       padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5,bottom:SizeConfig.blockSizeVertical*1.5 ),
//                       child:RaisedButton(
//                         child: Text("Submit"),
//                         color: Colors.redAccent,
//                         onPressed: () async
//                         {   
                          
                 
//               // showDialog(
//               //     context: context,
//               //     builder: (BuildContext context) {
//               //       return Center(child: CircularProgressIndicator(),);
//               //     });
//               // await loginAction();

//                            if (_contactFormKey.currentState.validate()) {
//                             //  _scaffoldKey.currentState.showSnackBar(
//                       // new SnackBar(duration: new Duration(seconds: 4), content:
//                       // new Row(
//                       //   children: <Widget>[
//                       //     new CircularProgressIndicator(),
//                       //     new Text("  Sending info...")
//                       //   ],
//                       // ),
//                       // ));
//                        // _handleSignIn()
//                   //     .whenComplete(() =>
//                   //     Navigator.of(context).pushNamed("HomeScreen")
//                   // );
//                                     callSnackBar("Submitting !!!");

//                                       Firestore.instance
//                                       .collection('Contact Form Data')
//                                       .document(nameInput.text)
//                                       .setData({
//                                         "name":nameInput.text,
//                                         // "uid": currentUser.uid,
//                                         "city": cityInput.text,
//                                         "message": msgInput.text,
//                                         "email": emailInput.text,
//                                         "mobile":phoneNumberInput.text,
                                        
//                                       })
//                                       .then((result) => {
                                        
//                                             Navigator.pushNamed(context,"HomeScreen"),
//                                         nameInput.clear(),
//                                         cityInput.clear(),
//                                         phoneNumberInput.clear(),
//                                         emailInput.clear(),
//                                         msgInput.clear(),
//                                         stateInput.clear(),
//                                       })
//                                   .catchError((err) => callSnackBar("Please check the details properly"));
//                               }
   
//                         },
//                         ),
//                     ) ,

//                   ],
//                 ),
//               ),
//             ),
//           )
//           );
//           }
        
//   String nameValidator(String value) 
//   {
//     if(value.length<3)
//     {
//       return "please fill this field with atleast 3 characters";
//     }
//     else
//     {
//       return null;
//     }
//   }

// String phoneValidator(String value)
// {
// if (value.length!=10) {
//       return 'Phone Number must be of 10 digits';
//     } else {
//       return null;
//     }
// }

// String emailValidator(String value) {
//   //need to write the efficient validator here
//     Pattern pattern =
//         r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
//     RegExp regex = new RegExp(pattern);
//     if (!regex.hasMatch(value)) {
//       return 'Email format is invalid';
//     } else {
//       return null;
//     }
//   }

// } 