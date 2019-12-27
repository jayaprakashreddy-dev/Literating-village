import 'dart:io';
import 'package:carigari_admin/Arrangements/variables.dart' as global;
import 'package:carigari_admin/Arrangements/Size.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  var isLoading = false;
  @override
  void initState() {
    print("in init state");
    super.initState();
    getCategoryList();
  }

  void callSnackBar(String msg) {
    _scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text(msg)));
  }

  getCategoryList() async {
    setState(() {
      isLoading = true;
    });
    QuerySnapshot qp;
    qp = await Firestore.instance.collection("farmers").getDocuments();
    global.category.isEmpty ? global.category.addAll(qp.documents) : null;
    // print(global.category[0].data['a']);
    setState(() {
      isLoading = false;
    });
  }

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
                  Navigator.pushNamed(context, "HomeScreen");
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
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Farmers And Buyers Interface"),
      ),
      body: WillPopScope(
        onWillPop: () {
          // Navigator.pushNamed(context,''),
          show();
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("\nList Of Category/Products:-\n"),
              Divider(
                color: Colors.deepOrangeAccent,
                height: 5.0,
              ),
              Expanded(
                child: global.category.length == 0
                    ? Center(
                        child: Text('Data!!!'),
                      )
                    : ListView.builder(
                        // controller: _scrollController,
                        itemCount: global.category.length != null
                            ? global.category.length
                            : null,
                        itemBuilder: (context, index) {
                          return Card(
                              child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(global
                                          .category[index].data['image'] ==
                                      null
                                  ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7AH9OUj6WxCcWIyjwYHcMQg0odBMRLsHk1LcWRWnTGngycCAF&s"
                                  : global.category[index].data['image']),
                            ),
                            contentPadding: EdgeInsets.all(5),
                            title: Text(
                                global.category[index].data['name'] == null
                                    ? "No Name"
                                    : global.category[index].data['name'],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  // fontSize: SizeConfig.blockSizeVertical * 2.9,
                                )),
                            subtitle: Text("Price Starts from ₹ " +
                                        global.category[index].data['price'] ==
                                    null
                                ? "Not yet"
                                : "Price Starts from  ₹ " +
                                    global.category[index].data['price']),
                            // dense: true,
                            // onTap: () {
                            //   // Navigator.pushNamed(context,"ContactUs");
                            //   // Navigator.pushNamed(context, "SubCategory");
                            //   // SubCategory(index);

                            //   //jp
                            //   // global.TempIndex = index;
                            //   global.store =
                            //       global.category[global.TempIndex].data['a'];
                            //   // Navigator.pushNamed(context, "EditScreen");
                            //   //jp
                            //   print("clicked for " + global.store);
                            //   callSnackBar("clicked ");
                            //   // print("clicked" +
                            //   //     global.category[index].data['a'] +
                            //   //     global.TempIndex.toString());
                            // },
                          ));
                        },
                      ),
              ),
              isLoading
                  ? Container(
                      child: Text("Loading"),
                    )
                  : Container()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // AddCategory();
          Navigator.pushNamed(context, "AddCategory");
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
