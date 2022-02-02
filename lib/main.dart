import 'package:flutter/material.dart';
import 'package:services_page/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        primarySwatch: Colors.amber,
      ),
      home: const WelcomePage()
    );
  }
}


  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
      appBar: AppBar(

      ),
      body: Center(

        child: Column(

      ),
      ),

    )
    );

  }

