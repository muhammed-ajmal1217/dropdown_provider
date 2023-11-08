import 'package:flutter/material.dart';
import 'package:myapp/provider/provider.dart';
import 'package:provider/provider.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<CircleAvatarProvider>(context, listen: true);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 280),
        child: Column(
          children: [
            Center(
                child: CircleAvatar(
                  radius: 50,
              backgroundColor: pro.color,
            )),
            ElevatedButton(
              style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.green)),
                onPressed: () {
                  pro.changeColorGreen();
                },
                child: Text('green')),
            ElevatedButton(
              style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.red)),
                onPressed: () {
                  pro.changeColorRed();
                },
                child: Text('red')),
          ],
        ),
      ),
    );
  }
}
