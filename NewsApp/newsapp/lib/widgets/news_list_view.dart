


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/article_model.dart';
import '../views/web_view.dart';
import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
            (context, index) => GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WebViewScreen(url: articles[index].url),
              ),
            );
          },
          child: NewsTile(articleModel: articles[index]),
        ),
      ),
    );
  }
}


















//   @override
//   Widget build(BuildContext context) {
//     return SliverList(
//       delegate: SliverChildBuilderDelegate(
//         childCount: articles.length,
//             (context, index) {
//           return Padding(
//             padding: const EdgeInsets.only(bottom: 22),
//             child: NewsTile(
//               articleModel: articles[index],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }