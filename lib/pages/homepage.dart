import 'package:agenda/model/schedule.dart';
import 'package:agenda/widgets/maindrawer.dart';
import 'package:agenda/widgets/scheduleTicket.dart';
import 'package:agenda/widgets/topiconbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  final List<Schedule> list;
  HomePage({Key? key,required this.list}):super(key:key);

  @override
  State<HomePage> createState(){
    return HomePageState();
  }

}
class HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Agenda"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
            Icons.touch_app,
            color: Colors.white,
           ),
          onPressed: () {},
        ),
        ]
      ),
      drawer: MainDrawer(),
      body: Container(
        child: Column(
          children: [
            TopIconBar(),
            Container(
              height: 560,
              child: ListView.builder(
                 itemCount: widget.list.length,
                  itemBuilder: (context, index){
                   return ListTile(
                    title: Column(
                      children: [
                        Container(
                          height: 90,
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Row(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Text(widget.list[index].month),
                                      Text(widget.list[index].day,
                                        textScaleFactor: 2,
                                      ),
                                      Text(widget.list[index].week),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    width: 200,
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(widget.list[index].name),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(widget.list[index].adress,
                                              style: TextStyle(color: Colors.orangeAccent),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(widget.list[index].time),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context,
                                        '/schedule',
                                        arguments: widget.list[index]);
                                    },
                                    icon: Icon(Icons.navigate_next),
                                    iconSize: 50,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(height: .2,width:240 ,color: Colors.black),
                      ],
                    ),
                   );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }

}

