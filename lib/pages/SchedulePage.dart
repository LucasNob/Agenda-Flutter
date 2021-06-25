import 'package:agenda/model/schedule.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SchedulePage extends StatefulWidget{
  @override
  State<SchedulePage> createState(){
    return SchedulePageState();
  }
}
class SchedulePageState extends State<SchedulePage>{
  
  @override
  Widget build(BuildContext context){
    final schedule = ModalRoute.of(context)!.settings.arguments as Schedule;
    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule"),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.share,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ]
      ),
      body: Column(
        children: [
          Container(
            child: Image.network("https://media-cdn.tripadvisor.com/media/photo-s/0a/af/01/64/vista-da-loja-no-interior.jpg"),
          ),
          Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Container(
                //color: Colors.amber,
                height: 360,
                width: 300,
                child: Column(
                  children: [
                    Container(height: 50),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(schedule.name,
                      textScaleFactor: 1.3,),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(schedule.adress,
                        style: TextStyle(color: Colors.orangeAccent),
                          textScaleFactor: 1.1
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(schedule.phone,
                          textScaleFactor: 1.1),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(schedule.time),
                    ),
                    Container(height: 20),
                    Container(height: .8,width:240 ,color: Colors.black),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(schedule.info),
                    ),
                    Container(height: 80,width: 200,
                    child:  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(schedule.info),
                    ),
                    ),
                    Container(height: .8,width:240 ,color: Colors.black),

                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.location_on,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  _map(schedule.map);
                                },
                              ),
                            ],
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.mail,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              _map(schedule.mail);
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.phone,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              _map(schedule.phone);
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.web,
                              color: Colors.black,

                            ),
                            onPressed: () {
                              _map(schedule.web);
                            },
                          ),
                        ],

                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                child: FloatingActionButton(
                  child: Icon(Icons.emoji_food_beverage_rounded),
                  onPressed: () {},
                  backgroundColor: Colors.deepOrange,
                ),
                right: 260,
                left: -40,
                bottom: 270,
                top:-90,
              ),
            ],
          ),
        ],
      ),
    );
  }
  _map(url) async{
    if(await canLaunch(url)){
      await launch(url);
    } else {
      throw 'Could not launch $url';
  }
  }

}

