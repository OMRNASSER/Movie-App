
import 'package:get/get.dart';
import 'package:movie/core/view_model/control_view_model.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ControlViewModel());



  }







}