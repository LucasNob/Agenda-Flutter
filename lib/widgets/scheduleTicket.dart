import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScheduleTicket extends StatefulWidget{
  @override
  State<ScheduleTicket> createState(){
    return ScheduleTicketState();
  }
}
class ScheduleTicketState extends State<ScheduleTicket>{

  @override
  Widget build(BuildContext context){
    return Container(
      height: 90,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              child: Column(
                children: [
                  Text("month"),
                  Text("01",
                    textScaleFactor: 2,
                  ),
                  Text("week"),
                ],
              ),
            ),
            Container(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 220,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                          child: Text("nameeeeee"),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("adresssssaaaaaaaaaaaaaaaaaaa",
                        style: TextStyle(color: Colors.orangeAccent),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                          child: Text("timeeeee"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              child: Icon(
                Icons.navigate_next,
                size: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }

}

