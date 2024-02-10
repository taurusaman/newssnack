import 'package:flutter/material.dart';
import 'package:newssnack/controller/fetchnews.dart';
import 'package:newssnack/models/newsArt.dart';
import 'package:newssnack/view/widgets/newscontainer.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  late NewsArt newsArt;
//initstate me async await lagana sahi nahi hota hai so we created a getnews function
  GetNews() async {
    newsArt = await FetchNews.fetchNews();
    setState(() {});
  }

  @override
  void initState() {
    GetNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            controller: PageController(initialPage: 0),
            scrollDirection: Axis.vertical,
            onPageChanged: (value) {
              setState(() {});
              GetNews();
            },
            itemBuilder: ((context, index) {
              return NewsContainer(
                  imgurl: newsArt.imgurl,
                  newscnt: newsArt.newscnt,
                  newsHead: newsArt.newsHead,
                  newDes: newsArt.newsDes,
                  newsurl: newsArt.newsurl);
            })));
  }
}
