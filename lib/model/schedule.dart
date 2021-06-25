class Schedule {
  String name='';
  String adress='';
  String month='';
  String day='';
  String week='';
  String time='';
  String map='';
  String mail='';
  String phone='';
  String web='';
  String info='';


  Schedule( String name, String day, String month,String week,
            String time,String adress,String map,String mail,
            String phone,String web,String info) {
    this.name = name;
    this.day  = day;
    this.month = month;
    this.week = week;
    this.adress = adress;
    this.time = time;
    this.map = map;
    this.mail = mail;
    this.phone = phone;
    this.web = web;
    this.info =info;
  }

}