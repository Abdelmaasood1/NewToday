
import 'package:flutter/cupertino.dart';

class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String url;
  ArticleModel(
      {this.image,required this.title, required this.subTitle,required this.url});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(

        image: json['urlToImage'] ?? ("assets/genarl (1).jfif"), // Replace with the correct path to your asset
   // Adjust the scale as needed
      // // good solution null of image
       title: json['title'],
      subTitle: json['description'],
        url: json['url']
    );
  }
}