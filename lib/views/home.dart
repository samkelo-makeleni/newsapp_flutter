import 'package:flutter/material.dart';
import 'package:newsapp_flutter/helper/data.dart';
import 'package:newsapp_flutter/helper/news.dart';
import 'package:newsapp_flutter/models/article_model.dart';
import 'package:newsapp_flutter/models/category_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<ArticleModel> articles =  [];

  bool _loading = true;
  @override
  void initState() {
    super.initState();
    categories = getCategories();
    getNews();
  }
  getNews() async{
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("Flutter"),
            Text(
              "News",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        elevation: 0.0,
      ),
      body: _loading ? const Center(
        child: CircularProgressIndicator(),
      ) : SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16), 
        child: Column(children: <Widget>[

        //Categories
        Container(
          padding:const EdgeInsets.symmetric(horizontal: 16),
           height: 60,
           child: ListView.builder(
              itemCount: categories.length,
               shrinkWrap: true,
              scrollDirection: Axis.horizontal,
               itemBuilder: (context, index) {
               return  CategoryTile( 
                  imageUrl: categories[index].imageUrl,
                   categoryName : categories[index].categoryName,
                 
                 );
               }),

        ),
           //Blogs
Container(
         padding: const EdgeInsets.only(top: 16),    
          child: ListView.builder(
          itemCount : articles.length,
          shrinkWrap: true,
          itemBuilder: (context, index){
            return BlogTile(
              imageUrl: articles[index].urlToImage, 
              title: articles[index].title,
              desc: articles[index].description);
          },
),
),

      ],),
     ),);
  }
}

class CategoryTile extends StatelessWidget {
  
  final imageUrl , categoryName ;
    CategoryTile( this.categoryName, this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Container(
          margin: const EdgeInsets.only(right: 16),
          child: Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  imageUrl,
                  width: 120,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 120,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.black26,
                ),
                child: Text(
                  categoryName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
class BlogTile extends StatelessWidget {
  final String imageUrl, title, desc;
  const BlogTile({ Key? key, required this.imageUrl, required this.title, required this.desc }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget> [
        Image.network(imageUrl),
        Text(title),
        Text(desc),
      ],
    );
  }
}