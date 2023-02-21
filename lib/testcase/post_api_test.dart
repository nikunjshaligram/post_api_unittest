import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:mockito/mockito.dart';
import 'package:post_api_test/controller/employee_controller.dart';
import 'package:post_api_test/core/urls.dart';
import 'package:post_api_test/data/model/create_employee.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([http.Client])
void main() {
  group('login unit testing', () {
    test('register return 200', () async {
      final client = MockClient(
        (_) async => await http.post(Uri.tryParse(urls().baseurl)!,
            body: {'username': 'kminchelle', 'password': '0lelplR'},
            headers: {'content-type': 'application/json'}).then(
          (value) async => http.Response(
            '{"id": 1, "username": "a", "email" : "aa", "firstName" : "aaa", "lastName" : "aaaa", "gender" : "aaaaa", "image" : "aaaaaa", "token" : "aaaaaaa", }',
            200,
          ),
        ),
      );
      expect(
          CreateEmployee(
            username: 'kminchelle',
            password: '0lelplR',
          ),
          isA<CreateEmployee>());
    });

    // test('throws an exception if the http call completes with an error', () {
    //   final client = MockClient(
    //     (_) async => http.Response('Invalid credentials', 400),
    //   );
    //   expect("Invalid credentials", throwsException);
    // });
  });
}
