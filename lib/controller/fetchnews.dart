//https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=17af658adca94c50a720ff150eda96c3

//https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=3abf3b3b0dca4cbb92fe6802478fb229

//3abf3b3b0dca4cbb92fe6802478fb229
import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart';
import 'package:newssnack/models/newsArt.dart';

class FetchNews {
  
  static List sourcesId = [
    "abc-news",
    "bbc-news",
    "bbc-sport",
    "business-insider",
    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",
    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",
    "medical-news-today",
    "national-geographic",
    "news24",
    "new-scientist",
    "new-york-magazine",
    "next-big-future",
    "techcrunch",
    "techradar",
    "the-hindu",
    "the-wall-street-journal",
    "the-washington-times",
    "time",
    "usa-today",
  ];
  
  //function for fetching news in FetchNews class jiska return type newsArt hai
  static Future<NewsArt> fetchNews() async {
    
    final _random = new Random();
    var sourceID = sourcesId[_random.nextInt(sourcesId.length)];
      print(sourceID);

    Response response = await get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?sources=$sourceID&apiKey=3abf3b3b0dca4cbb92fe6802478fb229"));
 
//Respose ke string jo bahut complicated tha usko parse karke object ko output de diya map tpke ka body_data variable me
    Map body_data = jsonDecode(response.body);
//us oject me se article wala object le kar article nam ke list me store kiya    
    List articles = body_data["articles"];
    print(articles);

//ab articles wale list ya collection ya array me se select karenge
    final _Newrandom = new Random();
//yaha par koi ek article select ho rha hai    
    var myArticle = articles[_random.nextInt(articles.length)];
   print(myArticle);

   //backend apna data kisi ko pass kar rha aur  ye ab sambhal rha hai
   return NewsArt.showonui(myArticle);
  }
}
