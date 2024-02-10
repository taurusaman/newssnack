import 'package:flutter/material.dart';
import 'package:newssnack/view/detailview.dart';

class NewsContainer extends StatelessWidget {
  String imgurl;
  String newsHead;
  String newDes;
  String newsurl;
  String newscnt;

  NewsContainer(
      {super.key,
      required this.imgurl,
      required this.newDes,
      required this.newscnt,
      required this.newsHead,
      required this.newsurl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
              height: 310,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              imgurl),
          SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              newsHead.length > 70
                  ? "${newsHead.substring(0, 50)}..."
                  : newsHead,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              newDes,
              style: TextStyle(fontSize: 12, color: Colors.black45),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              newscnt.length > 250
                  ? newscnt.substring(0, 250)
                  : "${newscnt.substring(0, newscnt.length - 15)}...",
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailViewScreen(newsurl: newsurl),
                          ));
                    },
                    child: Text("Read More")),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
