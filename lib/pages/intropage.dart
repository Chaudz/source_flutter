import 'package:flutter/material.dart';
import 'package:git/models/student.dart';

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
              child: Text("Page1"),
              onPressed: ()=>{
                Navigator.pushNamed(context, '/page1',arguments: Student("Chaubui", 20, "0362091690"))
            },
            ),
          SizedBox(height: 10,),
          ElevatedButton(
            child: Text("Page2"),
            onPressed: ()=>{
              Navigator.pushNamed(context, '/page2',arguments: Student("Ngan", 17, "0362424242"))
            },)
          ],
        )
      )
    );
  }
}
