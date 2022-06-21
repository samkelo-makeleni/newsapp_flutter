import 'dart:convert';

import 'package:newsapp_flutter/models/article_model.dart';
import 'package:http/http.dart' as http;

class News  {
List<ArticleModel> news = [];

Future<void> getNews() async {
     
    const endPointUlr = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=43ffdfabe33b46879c557af7cfcf7ebb";
    
    final response = await http.get(Uri.parse(endPointUlr));
    final jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){
        if(element["urlToImage"] != null && element["description"] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author:  element['author'],
            description:  element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
           // publishedAt: element["publishedAt"],
            content: element['content'],
          );
          news.add(articleModel);
        }
      });
    }
}
}