import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Page1")),
        body: Center(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: ()=>{
                      Navigator.pushNamed(context, '/page2')
                    },
                    child: Text('page 2')
                ),
                ElevatedButton(
                    onPressed: ()=>{

                    },
                    child: Text('page2')
                )
              ],
            )
        )
    );
  }
}
