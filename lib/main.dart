import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie/helper/bindings.dart';
import 'package:movie/view/control_view.dart';
import 'package:movie/view/splash_screen.dart';


import 'view/home_view.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());



}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false ,
      title:"Movie App",
      theme: ThemeData(
        backgroundColor: Colors.black,
        fontFamily: "Edu",
        brightness: Brightness.dark ,



      ),
        home: SplashScreen(),
      darkTheme: ThemeData.dark(),

    );
  }
}



