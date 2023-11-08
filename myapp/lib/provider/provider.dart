import 'package:flutter/material.dart';

class DropdownProvider extends ChangeNotifier{
String dropdownValue='Ajmal';
  var items=[
    'Ajmal',
    'Shibil',
    'Jassim',
    'Abhijith'
  ]; 
   changingFunction(String? newValue){
    dropdownValue=newValue!;
    notifyListeners();
  }
}
class CircleAvatarProvider extends ChangeNotifier{
  Color color=Colors.black;
  changeColorGreen(){
    color=Colors.green;
    notifyListeners();
  }
  changeColorRed(){
    color=Colors.red;
    notifyListeners();
  }
}