import 'package:flutter/material.dart';
// drpdownButton provider----------------------------------
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
//circlAvatar provider-------------------------------------
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

class TextProvider extends ChangeNotifier{
  TextEditingController controller=TextEditingController();
  String name='';
  addtext(){
    name=controller.text;
    notifyListeners();
  }
}