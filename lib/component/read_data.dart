import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

final CollectionReference userRef =
    FirebaseFirestore.instance.collection("users");

class Read extends StatefulWidget {
  const Read({super.key});

  @override
  State<Read> createState() => _ReadState();
}

class _ReadState extends State<Read> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<QuerySnapshot>(
        builder: ((context, snapshot) {
          return Container(
            decoration: BoxDecoration(
                gradient: RadialGradient(colors: [
              Color.fromARGB(251, 243, 94, 35),
              Color.fromARGB(227, 240, 99, 34),
              Color.fromARGB(199, 237, 105, 40),
            ])),
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: Colors.black,
                thickness: 2,
              ),
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, i) {
                return ListTile(
                  subtitle: Text("${snapshot.data!.docs[i]['age']}"),
                  leading: Text("${snapshot.data!.docs[i]['id']}"),
                  title: Text("${snapshot.data!.docs[i]['name']}"),
                );
              },
            ),
          );
        }),
        future: userRef.get(),
      ),
    );
  }
}
