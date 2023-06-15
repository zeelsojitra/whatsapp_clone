import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'demo.dart';
import 'home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //statusbar color change
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.light,
  ));

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      home: home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
