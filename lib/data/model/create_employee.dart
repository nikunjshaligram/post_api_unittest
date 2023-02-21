import 'dart:convert';

// CreateEmployee createEmployeeFromJson(String str) =>
//     CreateEmployee.fromJson(json.decode(str));

// String createEmployeeToJson(CreateEmployee data) => json.encode(data.toJson());

// class CreateEmployee {
//   String? name;
//   String? salary;
//   String? age;

//   CreateEmployee({this.name, this.salary, this.age});

//   CreateEmployee.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     salary = json['salary'];
//     age = json['age'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['name'] = this.name;
//     data['salary'] = this.salary;
//     data['age'] = this.age;
//     return data;
//   }
// }

CreateEmployee createEmployeeFromJson(String str) =>
    CreateEmployee.fromJson(json.decode(str));

String createEmployeeToJson(CreateEmployee data) => json.encode(data.toJson());

class CreateEmployee {
  String? username;
  String? password;

  CreateEmployee({this.username, this.password});

  CreateEmployee.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['username'] = this.username;
    data['password'] = this.password;
    return data;
  }
}
