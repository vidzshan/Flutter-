import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {
  const DisplayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings?.arguments as Map<String, String>;
    final fname = routeArgs['fname'].toString();
    final lname = routeArgs['lname'].toString();

    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'HI $fname $lname',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text('<<Home'))
          ],
        ),
      ),
    );
  }
}
