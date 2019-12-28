import 'package:carigari_admin/Arrangements/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Village extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> info = [];
    info.add("PopScreen");
    info.add("RevArea");
    info.add("3rd screen");
    List<String> title = [];
    title.add("Village Poppulation");
    title.add("Revenue Area");

    title.add("Officer's Info");
    List<String> image = [];
image.add("http://saujaldharatrust.com/wp-content/uploads/2015/07/7.jpg");
image.add("https://vakilsearch.com/advice/wp-content/uploads/2018/07/800px-Green_Beds_farmlands_India-696x424.jpg");
image.add("https://s3.ap-south-1.amazonaws.com/hansindia-bucket/h-upload/feeds/2019/07/23/198818-sr-ao-explains.jpg");

    return Scaffold(
      drawer: theDrawer(context),
      appBar: AppBar(
        title: Text("VILLAGE INFO"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Text("\nSchemes:-\n"),
          Divider(
            color: Colors.deepOrangeAccent,
            height: 5.0,
          ),
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(10.0),
              itemCount: 3,
              itemBuilder: (ctx, i) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 4.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: GridTile(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, info[i]);
                          },
                          child:
                               Image.network(image[i],
                                 fit: BoxFit.fill,

                                  ),),
                              // IconButton(
                              //     icon: Icon(Icons.info),
                              //     color: Theme.of(context).accentColor,
                              //     onPressed: () {
                              //       Navigator.pushNamed(context, info[i]);
                              //     }),
                        // ),
                        header: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, info[i]);
                          },
                          child: GridTileBar(
                            backgroundColor: Colors.black38,
                            title: Text(
                              title[i],
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 92 / 100,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}