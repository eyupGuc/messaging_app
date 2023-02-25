import 'package:flutter/material.dart';
import 'package:messaging_app/mesages_pages.dart';
import 'package:messaging_app/students_pages.dart';
import 'package:messaging_app/teachers_pages.dart';

void main() {
  runApp(const MessagingApp());
}

class MessagingApp extends StatelessWidget {
  const MessagingApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Messaging App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const  MyHomePage(title: 'Messaging App Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
 const  MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Student Name'),
            ),
            ListTile(
              title: const Text('Students'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const StudentsPages()));
              },
            ),
            ListTile(
              title: const Text('Teachers'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TeachersPage()));
              },
            ),
            ListTile(
              title: const Text("Messages"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MessagesPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
