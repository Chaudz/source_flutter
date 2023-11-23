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
                  Navigator.pushNamed(context, '/page1')
                },
                child: Text('page1')
            ),
            ElevatedButton(
                onPressed: ()=>{
                  if(Navigator.canPop(context)){
                    Navigator.maybePop(context)
                  }else{
                    showDialog(context: context, builder: (context)=> AlertDialog(content: Text('can not pop'),))
                  }
                },
                child: Text('pop')
            )
          ],
        )
      )
    );
  }
}
