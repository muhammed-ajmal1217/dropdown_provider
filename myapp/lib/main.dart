import 'package:flutter/material.dart';
import 'package:myapp/provider/provider.dart';
import 'package:myapp/screens/circleavatar.dart';
import 'package:myapp/screens/dropdown.dart';
import 'package:myapp/screens/textadding.dart';
import 'package:provider/provider.dart';

void main() { 
runApp(const MyApp()); 
} 

class MyApp extends StatelessWidget { 
const MyApp({Key? key}) : super(key: key); 
@override 
Widget build(BuildContext context) { 
	return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => DropdownProvider(),),
      ChangeNotifierProvider(create: (context) => CircleAvatarProvider(),),
      ChangeNotifierProvider(create: (context) => TextProvider(),),
    ],
      child: const MaterialApp(  
        //change the home: to see the other method results------------
      home: TextAdding(), 
      debugShowCheckedModeBanner: false, 
      ),
    ); 
} 
} 

