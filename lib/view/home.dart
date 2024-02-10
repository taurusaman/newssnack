import 'package:flutter/material.dart';
import 'package:newssnack/controller/fetchnews.dart';
import 'package:newssnack/view/widgets/newscontainer.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  @override
  void initState() {
    FetchNews.fetchNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            controller: PageController(initialPage: 0),
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: ((context, index) {
              return NewsContainer(
                  imgurl:
                      "https://images.unsplash.com/photo-1588681664899-f142ff2dc9b1?q=80&w=2148&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  newDes:
                      "The 5G rollout in India started around a year ago, right after the opening of India Mobile Congress (IMC) 2022 where Airtel and Jio announced their 5G plans. A year later, as IMC kicks off again, and Prime Minister Narender Modi talks of 5G speeds, it’s time to take a look back and see where we are on this next-generation mobile network. The sight, sadly, isn’t all that pretty. Sure, Indian mobile phone users — at least those who are using either Airtel or Jio — can see the 5G mark on their phones in most Indian cities. But can they use and experience 5G the way it has been promised? No. So far, the 5G rollout in India has been a disaster for users.",
                  newsHead: "5G in India",
                  newsurl:
                      "https://www.indiatoday.in/technology/talking-points/story/5g-is-available-in-india-in-almost-every-city-and-yet-so-far-its-rollout-has-been-a-disaster-for-users-2454636-2023-10-28");
            })));
  }
}
