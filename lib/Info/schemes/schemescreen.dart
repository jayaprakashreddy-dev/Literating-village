import 'package:carigari_admin/Arrangements/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carigari_admin/Arrangements/variables.dart' as global;
import 'scheme.dart';


class Schemescreen extends StatefulWidget {
  @override
  _SchemescreenState createState() => _SchemescreenState();
}

class _SchemescreenState extends State<Schemescreen> {

  @override
  Widget build(BuildContext context) {
          final index = ModalRoute.of(context).settings.arguments ; 

    return Scaffold(
      drawer: theDrawer(context),
      appBar: AppBar(
        title: Text(global.scheme[index].data['title']
          ,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            // Center(
            //   child: SizedBox(
            //     width: MediaQuery.of(context).size.width * 0.85,
            //     height: MediaQuery.of(context).size.height * 0.3,
            //     child: InkWell(
            //       borderRadius: BorderRadius.circular(10),
            //       // child:
            //       onTap: () {},
            //     ),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Description: ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),

            Padding(
              padding: EdgeInsets.only(left: 20, right: 18),
              child: Text(global.scheme[index].data['desc'],
                style: TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.w500, height: 1.5),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Key Processes: ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),

            Padding(
              padding: EdgeInsets.only(left: 20, right: 18),
              child: Text(global.scheme[index].data['keyp'],
                style: TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.w500, height: 1.5),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Key Outcomes: ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),

            Padding(
              padding: EdgeInsets.only(left: 20, right: 18),
              child: Text(global.scheme[index].data['keyo'],
                style: TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.w500, height: 1.5),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "WebSite: ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
                            padding: EdgeInsets.only(left: 20, right: 18),

                          child: Center(
                child: InkWell(
                  onTap: ()async {
                       if (await canLaunch("http://${global.scheme[index].data['web']}//")) {
                await launch("http://${global.scheme[index].data['web']}//");
              }
                  },
                  child: Text(
                    global.scheme[index].data['web'],
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            // SizedBox(
            //   width: MediaQuery.of(context).size.width * 0.85,
            //   height: MediaQuery.of(context).size.height * 0.05,
            //   child: Center(
            //     child: FlatButton(
            //       child: Text('Call'),
            //       onPressed: () {},
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        marginRight: 18,
        marginBottom: 20,
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 20.0),
        // visible: _dialVisible,
        closeManually: false,
        curve: Curves.bounceIn,
        overlayColor: Colors.black,
        overlayOpacity: 0.2,
        onOpen: () => print('OPENING DIAL'),
        onClose: () => print('DIAL CLOSED'),
        tooltip: 'Speed Dial',
        heroTag: 'speed-dial-hero-tag',
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 18.0,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
              child: Icon(Icons.phone_in_talk),
              backgroundColor: Colors.green,
              label: 'Call',
              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () async{
                var phone=global.scheme[index].data['mob'];
              await launch('tel:${phone.toString()}');
            //  await launch("tel:/+${global.scheme[index].data['mob].toString()}");
              }
              
              ),
          SpeedDialChild(
            child: Icon(Icons.mail),
            backgroundColor: Colors.lightBlueAccent,
            label: 'Mail',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () =>launch("mailto:wim@nic.in"),
          ),
          SpeedDialChild(
            child: Icon(Icons.web),
            backgroundColor: Colors.redAccent,
            label: 'WebSite',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () async=>
              await launch("http://${global.scheme[index].data['web']}//"),
            
          ),
        ],
      ),
    );
  }
}