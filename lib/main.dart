import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerceapp/components/HorizontalListView.dart';
import 'package:ecommerceapp/components/Products.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

  Widget mImageCarousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage("images/carousel/one.jpg"),
        AssetImage("images/carousel/two.jpg"),
        AssetImage("images/carousel/three.jpg"),
        AssetImage("images/carousel/four.jpg"),
        AssetImage("images/carousel/five.jpg"),
        AssetImage("images/carousel/six.jpg"),
        AssetImage("images/carousel/seven.jpg"),
        AssetImage("images/carousel/eight.jpg"),
        AssetImage("images/carousel/nine.jpg"),
        AssetImage("images/carousel/ten.jpg"),
      ],
      autoplay: false,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 800),
      dotSize: 4.0,
      indicatorBgPadding: 18.0,
    ),
  );


    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Cool shop'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
//             header
            new UserAccountsDrawerHeader(
              accountName: Text('Armen Mkhitaryan'),
              accountEmail: Text('armdev19@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.red),
            ),

//          body

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.red,),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.grey,),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blue,),
              ),
            ),
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          // image carousel
          mImageCarousel,
          // padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
         child: new Text("Categories"),),

          // Horizontal ListView
          HorizontalListView(),

          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text("Recent products"),),

          // Grid View
          Container(
            height: 320.0,
            child: Products(),
          )

        ],
      ),
    );
  }
}
