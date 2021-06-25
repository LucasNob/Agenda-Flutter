import 'package:flutter/material.dart';

class SpecialSchedule{
  String name = '';
  String month = '';
  String day = '';
  String week = '';
  Widget icon = Icon(Icons.star);

  SpecialSchedule(String name, String day, String month,String week) {
    this.name = name;
    this.day  = day;
    this.month = month;
    this.week = week;
  }

  SpecialScheduleIconed(String name, String day, String month,week,Widget icon) {
    this.name = name;
    this.day  = day;
    this.month = month;
    this.week = week;
    this.icon = icon;
  }
}