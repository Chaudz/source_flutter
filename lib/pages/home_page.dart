import 'package:flutter/material.dart';
import 'package:git/services/shared_preferences_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String>? infoUser = [];

  @override
  void initState(){
    super.initState();
    _setInfoUser();
  }

  void _setInfoUser() async {
    List<String>? value = await SharedPreferencesHelper.getInfo("userName");
    setState(() {
      infoUser = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello my home")),
      body: Center(
        child: Column(
          children: [
            Text("Name: ${infoUser ?? "null"}"),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed:  () async  {
                  await SharedPreferencesHelper.setInfoList(["bui van chau", "20", "nam"], 'userName');
                },
                child: Text('Save data')),
            ElevatedButton(
                onPressed: () async {
                  List<String>? value = await SharedPreferencesHelper.getInfo('userName');
                  setState((){
                    infoUser = value;
                  });
                },
                child: Text('Load data')),
            ElevatedButton(
                onPressed: () async {
                 SharedPreferencesHelper.clearInfo('userName');
                },
                child: Text('Clean data'))
          ],
        )
      )
    );
  }
}

