import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
          color: Colors.white,
        ),
        title: Text(
          "Postres Pepa Pig",
          style: TextStyle(fontSize: 40.0,fontFamily: 'postresff',color: Colors.white),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Colors.white,
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(2.0),
                height: 260.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              height: screenHeight /3,
                              width: MediaQuery.of(context).size.width -
                                  MediaQuery.of(context).size.width / 8,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(7.0),
                                child: new Carousel(
                                    boxFit: BoxFit.cover,
                                    images: [
                                      AssetImage('assets/img/1.jpg'),
                                      AssetImage('assets/img/2.jpg'),
                                      AssetImage('assets/img/3.jpg'),
                                      AssetImage('assets/img/4.jpg'),
                                      AssetImage('assets/img/5.jpg'),
                                      AssetImage('assets/img/6.jpg'),
                                      AssetImage('assets/img/7.jpg'),
                                      AssetImage('assets/img/8.jpg'),
                                      AssetImage('assets/img/9.jpg'),
                                    ],
                                  animationCurve: Curves.fastOutSlowIn,
                                  animationDuration: Duration(milliseconds: 2000),
                                ),
                              )
                            ),
                            Positioned(
                              left: 10.0,
                              top: 110.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Torta de Cereza",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "\S/.23.0",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Center(
                  child: Text(
                    "Ofertas",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  ),
              SizedBox(height: 15.0),
              GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                childAspectRatio: 1.0,
                mainAxisSpacing: 10.0,
                shrinkWrap: true,
                children: <Widget>[
                  _buildCard("Fresa", "Perú", "assets/img/2.jpg", 23, 33, 1),
                  _buildCard("Fresa", "China", "assets/img/3.jpg", 23, 33, 2),
                  _buildCard("Fresa", "Italia", "assets/img/4.jpg", 23, 33, 3),
                  _buildCard("Fresa", "Perú", "assets/img/5.jpg", 23, 33, 4),
                  _buildCard("Fresa", "Perú", "assets/img/6.jpg", 23, 33, 5),
                  _buildCard("Fresa", "Perú", "assets/img/7.jpg", 23, 33, 6),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCard(String name, String origin, String postimage, int likes,
      int comment, int cardIndex) {
    return Padding(
      padding: cardIndex.isEven
          ? EdgeInsets.only(right: 20.0)
          : EdgeInsets.only(left: 20.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
                color: Colors.grey.withOpacity(0.2),
                style: BorderStyle.solid,
                width: 1.0)),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 115.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      image: DecorationImage(
                          image: AssetImage(postimage), fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    origin,
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                ),
                SizedBox(height: 3.0),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 3.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.favorite, color: Colors.grey.withOpacity(0.4)),
                      SizedBox(width: 2.0),
                      Text(likes.toString(),
                          style: TextStyle(fontSize: 12.0, color: Colors.grey)),
                      SizedBox(width: 10.0),
                      Icon(Icons.chat_bubble,
                          color: Colors.grey.withOpacity(0.4)),
                      SizedBox(width: 2.0),
                      Text(
                        comment.toString(),
                        style: TextStyle(fontSize: 12.0, color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              left: 110.0,
              top: 102.0,
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.amber),
                child: Center(
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
