import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TopIconBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TopIconBarState();
  }
}

class TopIconBarState extends State<TopIconBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 90,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.local_movies_outlined,
                    color: Colors.grey,
                    size: 40,
                  ),
                  Text("Cinema",
                  style: TextStyle(color: Colors.grey)
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.sports_basketball,
                    color: Colors.grey,
                    size: 40,
                  ),
                  Text("Sports",
                      style: TextStyle(color: Colors.grey)
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.music_note,
                    color: Colors.grey,
                    size: 40,
                  ),
                  Text("Musica",
                      style: TextStyle(color: Colors.grey)
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.face,
                    color: Colors.grey,
                    size: 40,
                  ),
                  Text("Face",
                      style: TextStyle(color: Colors.grey)
                  ),
                ],
              )
            ],
          ),
          Container(
            height: 30,
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search),
                  Text('Search')
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}