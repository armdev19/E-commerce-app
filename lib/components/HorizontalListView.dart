import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            mImageLocation: 'images/categories/ic_shirts.png',
            mImageCaption: 'Shirts',
          ),

          Category(
            mImageLocation: 'images/categories/ic_dress.png',
            mImageCaption: 'Dress',
          ),

          Category(
            mImageLocation: 'images/categories/ic_pants.png',
            mImageCaption: 'Pants',
          ),

          Category(
            mImageLocation: 'images/categories/ic_formal.png',
            mImageCaption: 'Formal',
          ),

          Category(
            mImageLocation: 'images/categories/ic_informal.png',
            mImageCaption: 'Informal',
          ),

          Category(
            mImageLocation: 'images/categories/ic_shoes.png',
            mImageCaption: 'Shoes',
          ),

          Category(
            mImageLocation: 'images/categories/ic_accessories.png',
            mImageCaption: 'Other',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String mImageLocation;
  final String mImageCaption;

  Category({this.mImageLocation, this.mImageCaption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              mImageLocation,
              width: 60.0,
              height: 60.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(mImageCaption),
            )
          ),
        ),
      ),
    );
  }
}
