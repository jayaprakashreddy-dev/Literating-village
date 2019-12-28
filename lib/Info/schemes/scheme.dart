import 'package:carigari_admin/Arrangements/variables.dart' as global;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Scheme extends StatefulWidget {
  Scheme({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _SchemeState createState() => _SchemeState();
}

class _SchemeState extends State<Scheme> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  var isLoading = false;
  int a;
 List<String> name= [];

  @override
  void initState() {
    print("in init state");
   

    
    getCategoryList();
      
     
    
    super.initState();
      name.add("MA");
    name.add("NRUM");
    name.add("NSAP");
    name.add("PMGSY");
    name.add("PMRDF");
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
    qp = await Firestore.instance.collection("schemes").getDocuments();
    global.scheme.isEmpty ? global.scheme.addAll(qp.documents) : null;
    print(global.scheme);
    print(global.scheme[0].data['title']);
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Schemes"),
        backgroundColor: Colors.orangeAccent,
      ),
      body:
       Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Text("\nSchemes:-\n"),
          Divider(
            color: Colors.deepOrangeAccent,
            height: 5.0,
          ),
          Expanded(
            child: 
            global.scheme.length == 0
                ? Center(
                    child: Text('Data!!!'),
                  ):
                 GridView.builder(
                    padding: const EdgeInsets.all(10.0),
                    itemCount: global.scheme.length,
                    itemBuilder: (ctx, i) {
                      return Container(
                                    height:MediaQuery.of(context).size.height* 0.30,

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
                                  Navigator.pushNamed(context, "Schemescreen",arguments:i);
                                 
                                },
                                child: Hero(
                                  tag: global.scheme[i],
                                  child: Image.network(global.scheme[i].data['image'],
                                    fit: BoxFit.fill,
                                  
                                ),
                              ),),
                              footer: GestureDetector(
                                 onTap: () {
                                  Navigator.pushNamed(context, "Schemescreen",arguments:i);
                                 
                                },
                                                              child: GridTileBar(
                          backgroundColor: Colors.black38,
                                  // leading: Consumer<Product>(
                                  //   builder: (ctx, product, _) => IconButton(
                                  //         icon: Icon(
                                  //           product.isFavorite ? Icons.favorite : Icons.favorite_border,
                                  //         ),
                                  //         color: Theme.of(context).accentColor,
                                  //         onPressed: () {
                                  //           product.toggleFavoriteStatus(
                                  //             authData.token,
                                  //             authData.userId,
                                  //           );
                                  //         },
                                  //       ),
                                  // ),
                                  title: Text(
                                    name[i],
                                    // style:TextStyle(color: Colors.black),
                                    textAlign: TextAlign.center,
                                  ),
                                  // trailing: IconButton(
                                  //   icon: Icon(
                                  //     Icons.shopping_cart,
                                  //   ),
                                  // onPressed: () {
                                  //   cart.addItem(product.id, product.price, product.title);
                                  //   Scaffold.of(context).hideCurrentSnackBar();
                                  //   Scaffold.of(context).showSnackBar(
                                  //     SnackBar(
                                  //       content: Text(
                                  //         'Added item to cart!',
                                  //       ),
                                  //       duration: Duration(seconds: 2),
                                  //       action: SnackBarAction(
                                  //         label: 'UNDO',
                                  //         onPressed: () {
                                  //           cart.removeSingleItem(product.id);
                                  //         },
                                  //       ),
                                  //     ),
                                  //   );
                                  // },

                                  // ),
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
