import 'package:flutter/material.dart';
import 'package:news_module/news/model/news_model.dart';

class NewsList extends StatelessWidget{

  static int GRID_COUNT = 1;

  final NewsModel newsList;

  NewsList({this.newsList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: GRID_COUNT
      ),
      itemCount: newsList.articles.length,
      itemBuilder: (context, index){
//        return Image.network(newsList.articles[index].urlToImage);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex:3,
              child: Container(
                  child: Image.network(newsList.articles[index].urlToImage)
              ),
            ),
            Expanded(
                flex: 1,
                child: Text(
                    newsList.articles[index].description
                )
            ),
            Expanded(
                flex: 3,
                child: Text(
                    newsList.articles[index].description
                )
            )
          ],
        );
      },
    );
  }
}

Container getNewsContainer(){
  return Container(
      child: Column(
        children: <Widget>[
        ],
      )
  );
}