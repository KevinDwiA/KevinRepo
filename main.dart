import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Products'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {},
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff0096ff),
              Color(0xff6610f2)
            ], begin: FractionalOffset.topLeft, end: FractionalOffset.bottomRight),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: ListTile(
              leading: Image.network("https://dfestore.com/wp-content/uploads/2020/08/9904-1.jpg"),
              title: Text("Brand New Laptop", maxLines: 1, overflow: TextOverflow.ellipsis),
              subtitle: Text("ROG Strix G15", maxLines: 2, overflow: TextOverflow.ellipsis),
            ),
          );
        },
      ),
    );
  }
}
