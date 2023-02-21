// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:post_api_test/modules/bindng/employee_binding.dart';
import 'package:post_api_test/modules/views/createemployee.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.EMPLOYEE;

  static final routes = [
    GetPage(
        name: _Paths.EMPLOYEE,
        page: () => const CreateEmployeeScreen(),
        binding: EmployeeBinding())
  ];
}
