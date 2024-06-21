import 'package:ecobin/pages/homeMain.dart';

class VolanModel{
  String name;
  int hours;

  VolanModel({
    required this.name,
    required this.hours,
  });

    static List<VolanModel> getModel(){
    List<VolanModel> list=[];
    list.add(VolanModel(name: 'Даниял', hours: 21));
    list.add(VolanModel(name: 'Аружан', hours: 21));
    list.add(VolanModel(name: 'Арсен', hours: 18));
    list.add(VolanModel(name: 'Саша', hours: 17));
    list.add(VolanModel(name: 'Бауыржан', hours: 15));
    list.add(VolanModel(name: 'Касымжомарт', hours: 14));
    list.add(VolanModel(name: 'Айзере', hours: 11));
    list.add(VolanModel(name: 'Наташа', hours: 8));
    list.add(VolanModel(name: 'Айдын', hours: 4));
    return list;
  }
}