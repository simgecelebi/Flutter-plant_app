import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'featured_plants.dart';
import 'header_with_searchbox.dart';
import 'recomend_plants.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(Object context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Önerilen", press: () {}),
          RecomendsPlants(),
          TitleWithMoreBtn(title: "Özellikli Bitkiler", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
