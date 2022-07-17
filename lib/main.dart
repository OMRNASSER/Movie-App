import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie/helper/bindings.dart';
import 'package:movie/view/control_view.dart';


import 'view/home_view.dart';void main(){
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
        home: ControlView(),
      darkTheme: ThemeData.dark(),

    );
  }
}



