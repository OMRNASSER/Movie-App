import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie/core/view_model/control_view_model.dart';

class ControlView extends GetWidget<ControlViewModel> {
  @override
  Widget build(BuildContext context) {
      return GetBuilder<ControlViewModel>(
          init: ControlViewModel(),
          builder: (controller) =>
              Scaffold(
                body: controller.currentScreen,
                bottomNavigationBar: bottomNavigationBar(),
              ),
        );
  }

  Widget bottomNavigationBar() {
    return GetBuilder<ControlViewModel>(
      init: Get.find<ControlViewModel>(),
      builder: (controller) => BottomNavigationBar(
        currentIndex: controller.navigatorValue,
        onTap: (index) {
          controller.changeSelectedValue(index);
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text("Explore", style: TextStyle(color: Colors.redAccent)),
            ),
            label: "",
            icon: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child:Image.asset("assets/images/icons8-home-24.png" , color: Colors.white,),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text("Search", style: TextStyle(color: Colors.redAccent)),
            ),
            label: "",
            icon: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child:Icon(Icons.search),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                "Save Movie",
                style: TextStyle(color: Colors.redAccent),
              ),
            ),
            label: "",
            icon: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Icon(Icons.add_to_photos_rounded),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                "Account",
                style: TextStyle(color: Colors.redAccent),
              ),
            ),
            label: "",
            icon: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Icon(Icons.person),
            ),
          ),
        ],
        elevation: 2,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.grey.shade50,
      ),
    );
  }
}