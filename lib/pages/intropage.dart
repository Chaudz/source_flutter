import 'package:flutter/material.dart';
import 'package:git/pages/homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("IntroPage")),
      body: Center(
        child: Column(
          children: [
            Text("This is intro page"),
            ElevatedButton(
              child: Text("HomePage"),
              onPressed: ()=>{
                Navigator.pushNamed(context, '/homepage')
            },
            )
          ],
        )
      )
    );
  }
}
