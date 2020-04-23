import 'package:flutter/material.dart';
import 'package:ecommerceapp/pages/ProductDetails.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var mProductList = [
    {
      "name": "Blazer",
      "image": "images/products/blazer_one.png",
      "old_price": 130,
      "price": 97,
    },
    {
      "name": "Red dress",
      "image": "images/products/dress_red.png",
      "old_price": 105,
      "price": 60,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: mProductList.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            mProductName: mProductList[index]['name'],
            mProductImage: mProductList[index]['image'],
            mProductOldPrice: mProductList[index]['old_price'],
            mProductPrice: mProductList[index]['price'],
          );
        });
  }
}

class SingleProduct extends StatelessWidget {
  final mProductName;
  final mProductImage;
  final mProductOldPrice;
  final mProductPrice;

  SingleProduct(
      {this.mProductName,
      this.mProductImage,
      this.mProductOldPrice,
      this.mProductPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: mProductName,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new ProductDetails(
                    mProductDetailsName: mProductName,
                    mProductDetailsOldPrice: mProductOldPrice,
                    mProductDetailsPrice: mProductPrice,
                    mProductDetailsImage: mProductImage,
                  ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        mProductName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\$$mProductPrice",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        "\$$mProductOldPrice",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    mProductImage,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
