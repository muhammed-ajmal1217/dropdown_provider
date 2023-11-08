import 'package:flutter/material.dart';
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
      ChangeNotifierProvider(create: (context) => provider(),)
    ],
      child: MaterialApp(  
      home: const MyHomePage(), 
      debugShowCheckedModeBanner: false, 
      ),
    ); 
} 
} 

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
 
  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<provider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            Center(
              child: DropdownButton(
                value: pro.dropdownValue,
                icon: Icon(Icons.arrow_downward_outlined),
                items: pro.items.map((String items){
                return DropdownMenuItem(
                  value: items,
                  child: Text(items));
              }).toList(), 
              
                onChanged:(newValue) {              
                  pro.changingFunction(newValue);
              }, ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OutPutPage(dropdownValue: pro.dropdownValue)));
            }, 
            child: Text('Next')),
          ],
        ),
      ),
    );
  }
}
// ignore: must_be_immutable
class OutPutPage extends StatelessWidget {
  String dropdownValue;
  OutPutPage({super.key,required this.dropdownValue});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Goback'),
      ),
      body: Center(
        child: Text('$dropdownValue',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 40),),
      ),
    );
  }
}

class provider extends ChangeNotifier{
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
