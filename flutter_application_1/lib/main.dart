import 'package:flutter/material.dart';
import 'displaypage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Home Page'),
      routes: {
        'display_pg' : (ctx)=>DisplayPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final fnameTxtCnt =TextEditingController();
  final lnameTxtCnt =TextEditingController();
void navigateNextPage(BuildContext ctx)
{
  Navigator.of(ctx).pushNamed(
    'display_pg',arguments: {
      'fname' : fnameTxtCnt.text,
      'lname' : lnameTxtCnt.text,
  }
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: fnameTxtCnt,
                decoration: InputDecoration(labelText: 'First name'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: lnameTxtCnt,
                decoration: InputDecoration(labelText: 'Last Name'),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  navigateNextPage(context);
                },
                child: const Text(
                  'Say Hi >>',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
