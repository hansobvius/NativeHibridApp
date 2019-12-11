import 'package:flutter/material.dart';
import 'package:news_module/news/model/news_model.dart';
import 'package:news_module/news/remote/remote_request.dart';
import 'package:news_module/news/ui/news_list.dart';
import 'package:news_module/news/widgets/custom_widgets.dart';
import 'package:http/http.dart' as http;


class NewsContainer extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<NewsModel>(
            future: fetchNews(http.Client()),
            builder: (context, snapshot){
              if(snapshot.hasError) print(snapshot.error);
              return snapshot.hasData
                  ? NewsList(newsList: snapshot.data)
                  : Center(child: CircularProgressIndicator());
            }
        ),
      ),
    );
  }
}
