

class NewsArt {
  String imgurl;
  String newsHead;
  String newsDes;
  String newscnt;
  String newsurl;
  //constructor of newsart class
  NewsArt(
      {required this.imgurl,
      required this.newsHead,
      required this.newsDes,
      required this.newscnt,
      required this.newsurl});

  //function jo ki return karega  newsarticle class ke data items ko

  static NewsArt showonui(Map<String, dynamic> article) {
    return NewsArt(
      //article nam ke map se initialize kar rhe hai
        imgurl: article["urlToImage"] ?? "https://media.istockphoto.com/id/1182477852/photo/breaking-news-world-news-with-map-backgorund.jpg?s=1024x1024&w=is&k=20&c=S9FBe3KUvooZHZktJzr8Nt94wtg56BQTQiqAz8zUK8M=",
        newsHead:article["title"] ?? "--",
        newsDes: article["description"] ?? "--",
        newscnt: article["content"] ?? "--",
        newsurl: article["url"]?? "https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN:en");
  }
}
