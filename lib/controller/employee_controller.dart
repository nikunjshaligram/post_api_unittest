// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:http/src/mock_client.dart';
import 'package:post_api_test/core/urls.dart';
import 'package:post_api_test/data/model/create_employee.dart';

class EmployeeController extends GetxController {
  final formKey = GlobalKey<FormState>();
  // TextEditingController nameController = TextEditingController();
  // TextEditingController salaryController = TextEditingController();
  // TextEditingController ageController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<CreateEmployee?> submitdata(http.Client client) async {
    CreateEmployee createEmployee = CreateEmployee(
      // name: nameController.text,
      // salary: salaryController.text,
      // age: ageController.text,
      username: usernameController.text,
      password: passwordController.text,
    );

    try {
      http.Response response = await http.post(Uri.tryParse(urls().baseurl)!,
          body: createEmployeeToJson(createEmployee),
          headers: {'content-type': 'application/json'});

      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        print("result----$result");
        print(result['message']);

        createEmployee = CreateEmployee.fromJson(result);
        update();
        return createEmployee;
      }
    } catch (e) {
      print(e);
    }

    return null;
  }
}
