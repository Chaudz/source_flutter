import 'package:flutter/material.dart';
import 'package:git/models/student.dart';

class Page2 extends StatelessWidget {
  final String? name;
  final String? numberPhone;
  final int? age;
  const Page2({this.name,this.numberPhone,this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Page2')),
        body: Center(
          child: Column(
            children: [
              Text('${name}'),
              Text('${age}'),
              Text('${numberPhone}'),
            ],
          ),
        )
    );
  }
}
