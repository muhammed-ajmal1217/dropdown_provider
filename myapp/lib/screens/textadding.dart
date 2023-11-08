import 'package:flutter/material.dart';
import 'package:myapp/provider/provider.dart';
import 'package:provider/provider.dart';

class TextAdding extends StatelessWidget {
  const TextAdding({super.key});

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<TextProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(60),
        child: Column(
          children: [
            TextFormField(
              controller: pro.controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            ElevatedButton(
                onPressed: () {
                  pro.addtext();
                  pro.controller.clear();
                },
                child: Text('Submit')),
            SizedBox(
              height: 130,
            ),
            Text(pro.name)
          ],
        ),
      ),
    );
  }
}
