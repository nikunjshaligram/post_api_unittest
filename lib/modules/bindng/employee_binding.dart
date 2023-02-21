import 'package:get/get.dart';
import 'package:post_api_test/controller/employee_controller.dart';

class EmployeeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EmployeeController>(() => EmployeeController());
  }
}
