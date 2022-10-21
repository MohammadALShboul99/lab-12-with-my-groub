import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:semifinal/component/add.dart';
import 'package:semifinal/component/read_data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 195, 122, 85),
          bottom: TabBar(tabs: [
            Icon(Icons.add),
            Icon(Icons.update),
            Icon(Icons.read_more),
            Icon(Icons.delete),
          ]),
        ),
        body: TabBarView(children: [
          const Add(),
          Container(),
          Read(),
          Container(),
        ]),
      ),
    );
  }
}
