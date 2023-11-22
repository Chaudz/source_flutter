import 'package:flutter/material.dart';
import '../models/student.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    Student? student = ModalRoute.of(context)?.settings.arguments as Student?;

    return Scaffold(
      appBar: AppBar(title: Text('Page1')),
      body: Center(
        child: Column(
          children: [
            // Kiểm tra xem student có null hay không trước khi gọi phương thức
            Text('${student?.getName() ?? "Unknown"}'),
            Text('${student?.getAge() ?? "Unknown"}'),
            Text('${student?.getNumberPhone() ?? "Unknown"}'),
          ],
        ),
      ),
    );
  }
}

