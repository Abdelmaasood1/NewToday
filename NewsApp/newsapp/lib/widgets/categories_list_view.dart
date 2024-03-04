


import 'package:flutter/cupertino.dart';

import '../Models/category_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/R.jfif',
      categoryName: 'Business',
    ),
    CategoryModel(
      image: 'assets/OIP.jpeg',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/health.jfif',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'assets/science1).jfif',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      image: 'assets/spo.jfif',
      categoryName: 'Sports',
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }}
