import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  String imgurl;
  String newsHead;
  String newDes;
  String newsurl;

  NewsContainer(
      {super.key,
      required this.imgurl,
      required this.newDes,
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
              newsHead,
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
              style: TextStyle(fontSize: 16),
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
                      print("Going to $newsurl");
                    },
                    child: Text("Read More")),
              ),
            ],
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
