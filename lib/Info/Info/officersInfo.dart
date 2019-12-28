import 'package:carigari_admin/Arrangements/drawer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class OfficersInfo extends StatefulWidget {
  @override
  _OfficersInfoState createState() => _OfficersInfoState();
}

class _OfficersInfoState extends State<OfficersInfo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: theDrawer(context),
        appBar: AppBar(
          title: Text("Officer's Info"),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 30.0),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Divider(
                      height: 2,
                      thickness: 3,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Designation",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Phone Number",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      height: 2,
                      thickness: 3,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Sarpanch",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w600),
                        ),
                        InkWell(
                          child: Text(
                            "9766098768",
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.w600),
                          ),
                          onTap: ()async {
                            var phone="+919766098768";
                            await launch('tel:${phone.toString()}');
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      height: 2,
                      thickness: 3,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "VRA",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w600),
                        ),
                        InkWell(
                          child: Text(
                            "9764498768",
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.w600),
                          ),
                          onTap: ()async {
                            var phone="+919764498768";
                            await launch('tel:${phone.toString()}');
                          
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      height: 2,
                      thickness: 3,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "VRO",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w600),
                        ),
                        InkWell(
                          child: Text(
                            "9764628404",
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.w600),
                          ),
                          onTap: () async{
                              var phone="+919764628404";
                            await launch('tel:${phone.toString()}');
                          
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      height: 2,
                      thickness: 3,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "MRO",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w600),
                        ),
                        InkWell(
                          child: Text(
                            "9764628404",
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.w600),
                          ),
                          onTap: () async{
                             var phone="+919764628404";
                            await launch('tel:${phone.toString()}');
                          
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      height: 2,
                      thickness: 3,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Field Officer",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w600),
                        ),
                        InkWell(
                          child: Text(
                            "7467976462",
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.w600),
                          ),
                          onTap: ()async {
                            var phone="+919764628404";
                            await launch('tel:${phone.toString()}');
                          
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      height: 2,
                      thickness: 3,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "DAO",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w600),
                        ),
                        InkWell(
                          child: Text(
                            "9646328404",
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.w600),
                          ),
                          onTap: ()async {
                             var phone="+919764628404";
                            await launch('tel:${phone.toString()}');
                          
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      height: 2,
                      thickness: 3,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}