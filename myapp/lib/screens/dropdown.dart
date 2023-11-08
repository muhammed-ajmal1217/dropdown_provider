import 'package:flutter/material.dart';
import 'package:myapp/provider/provider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
 
  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<DropdownProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 330),
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