import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tinggi = MediaQuery.of(context).size.height;
    var lebar = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Posttest 1 Muhammad Iqbal Zamzami",
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        width: lebar,
        height: tinggi,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.red,
          image: const DecorationImage(
              image: NetworkImage(
                  'https://images.pexels.com/photos/4041242/pexels-photo-4041242.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
              fit: BoxFit.cover),
          border: Border.all(width: 10, color: Colors.black),
          borderRadius: BorderRadius.circular(100),
        ),
        child: const Text(
          "1915016122\nMuhammad Iqbal Zamzami",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Color(0xFF42A5F5),
          ),
        ),
      ),
    );
  }
}
