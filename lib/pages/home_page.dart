import 'package:flutter/material.dart';
import 'package:git/pages/page1.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Homepage")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: ()=>{
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Page1()))
                },
                child: Text('page1')
            ),
            ElevatedButton(
                onPressed: ()=>{

                },
                child: Text('page1')
            )
          ],
        )
      )
    );
  }
}
