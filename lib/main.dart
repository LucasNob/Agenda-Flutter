import 'package:agenda/model/schedule.dart';
import 'package:agenda/pages/SchedulePage.dart';
import 'package:agenda/pages/homepage.dart';
import 'package:agenda/widgets/maindrawer.dart';
import 'package:agenda/widgets/scheduleTicket.dart';
import 'package:agenda/widgets/topiconbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      routes: {
        '/': (context) => HomePage(list: createList()),
        '/schedule' : (context) => SchedulePage(),
      },
      initialRoute: '/',
    );
  }

  createList() {
    List<Schedule> list=[];
    list.add(Schedule("festa",
        "03",
        "june",
        "sunday",
        "09:09",
        "rua altino arantes 000",
        "https://goo.gl/maps/EhcysWTTpDiPSAHN9",
        "mailto:lucas2nobrega@gmail.com",
        "tel:102983091283",
        "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce turpis magna, suscipit eu egestas eu, faucibus et enim. Sed risus massa, mattis a orci eu, eleifend suscipit dui. Proin congue et ipsum suscipit sollicitudin"));
    list.add(Schedule(
        "confraternizacao",
        "05",
        "june",
        "tuesday",
        "10:39",
        "avenida brazil",
        "https://goo.gl/maps/sd2mU38Q4CvFhBWPA",
        "mailto:lucas2nobrega@gmail.com",
        "tel:112191832749812374",
        "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce turpis magna, suscipit eu egestas eu, faucibus et enim. Sed risus massa, mattis a orci eu, eleifend suscipit dui. Proin congue et ipsum suscipit sollicitudin"));
    //list.add(Schedule(name, day, month, week, time, adress, map, mail, phone, web));
    return list;
  }
}