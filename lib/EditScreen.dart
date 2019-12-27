import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './Size.dart';
import './variables.dart' as global;

class EditCategory extends StatefulWidget {
  @override
  _EditCategoryState createState() => _EditCategoryState();
}

class _EditCategoryState extends State<EditCategory> {
  final GlobalKey<FormState> _contactFormKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController aInput;
  TextEditingController imageInput;
  TextEditingController priceInput;
  @override
  initState() {
    aInput = new TextEditingController();
    imageInput = new TextEditingController();
    priceInput = new TextEditingController();
  }

  void callSnackBar(String msg) {
    _scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    // TODO: implement build
    return new Scaffold(
        key: _scaffoldKey,

        // resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text("Update Details"),
          backgroundColor: Colors.green,
        ),
        // key: _scaffoldKey,
        resizeToAvoidBottomPadding: false,
        body: WillPopScope(
            onWillPop: () {
              Navigator.pushNamed(context, "HomeScreen");
            },
            child: SizedBox(
              child: Form(
                key: _contactFormKey,
                child: ListView(
                  children: <Widget>[
                    Text("\n"),
                    Text(
                      "  \tProduct Description/Updating for " +
                          global.category[global.TempIndex].data['a'],
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        // SizeConfig.blockSizeVertical * 2.9,
                      ),
                    ),

                    // Text("\n\n"),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20.0,
                        //  SizeConfig.blockSizeVertical * 1.5,
                        bottom: 20.0,
                        // SizeConfig.blockSizeVertical * 1.5
                      ),
                      child: TextFormField(
                        controller: aInput,
                        // validator: nameValidator,
                        style: textStyle,
                        // keyboardType: Text(),
                        decoration: InputDecoration(
                            labelStyle: textStyle,
                            labelText: " Name",
                            hintText:
                                global.category[global.TempIndex].data['a'],
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(500.0
                                    // SizeConfig.blockSizeVertical*1.5
                                    ))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20.0,
                        //  SizeConfig.blockSizeVertical * 1.5,
                        bottom: 20.0,
                        // SizeConfig.blockSizeVertical * 1.5
                      ),
                      child: TextFormField(
                        controller: imageInput,
                        // validator: linkValidator,
                        style: textStyle,
                        // keyboardType: Text(),
                        decoration: InputDecoration(
                            labelStyle: textStyle,
                            labelText: " Image Link",
                            hintText: " Enter image URL (Exact Link)",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(500.0
                                    // SizeConfig.blockSizeVertical*1.5
                                    ))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0
                          // top: SizeConfig.blockSizeVertical*1.5,bottom:SizeConfig.blockSizeVertical*1.5
                          ),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: priceInput,
                        style: textStyle,
                        maxLength: 7,
                        // validator: phoneValidator,
                        decoration: InputDecoration(
                            labelStyle: textStyle,
                            labelText: " Price ₹",
                            hintText: " Enter Price in ₹",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(500.0
                                    // SizeConfig.blockSizeVertical*1.5
                                    ))),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Center(
                            child: InkWell(
                                child: Text(
                                  "  Submit  ",
                                  style: TextStyle(
                                      backgroundColor: Colors.blueAccent,
                                      fontSize: 40),
                                ),

                                // color: Colors.redAccent,
                                onTap: () async {
                                  global.aG = (aInput.text == null
                                      ? global
                                          .category[global.TempIndex].data['a']
                                      : aInput);
                                  global.priceG = (priceInput.text == null
                                      ? global.category[global.TempIndex]
                                          .data['price']
                                      : priceInput);
                                  global.imageG = (imageInput.text == null
                                      ? global.category[global.TempIndex]
                                          .data['image']
                                      : imageInput);

                                  print(global.aG.text);
                                  print(global.priceG.text);
                                  print(global.imageG.text);
                                  print("stored");
                                  print(global.aG.text);

                                  print("jhg");
                                  if (_contactFormKey.currentState.validate()) {
                                    //  callSnackBar("Submitting !!!");

                                    callSnackBar(
                                        "Updating the Details Please wait!!");
                                    Firestore.instance
                                        .collection('category')
                                        .document(global.store)
                                        .updateData({
                                          "a": global.aG.text,
                                          // "uid": currentUser.uid,
                                          "image": global.imageG.text,
                                          "price": global.priceG.text,
                                        })
                                        .then((result) => {
                                              callSnackBar(
                                                  "Updated successfully!!!"),
                                              Navigator.pushNamed(
                                                  context, "HomeScreen"),
                                              aInput.clear(),
                                              imageInput.clear(),
                                              priceInput.clear(),
                                            })
                                        .catchError((err) => callSnackBar(
                                            "Something went wrong!!please check internet Connectivity"));
                                  } else {
                                    callSnackBar(
                                        "Please Enter the details properly");
                                  }
                                })))
                  ],
                ),
              ),
            )));
  }
}
