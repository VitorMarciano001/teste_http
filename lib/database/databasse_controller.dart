// ignore_for_file: prefer_typing_uninitialized_variables, unused_local_variable
import 'dart:convert';
import 'package:firebase_teste_1/user.dart';
import 'package:http/http.dart' as http;

class Register {
  // Here begins the method post of the class
  Future<void> post({
    required String path, // Parameters necessary
    required Map<String, Object> usrPayload,
  }) async {
    var url = Uri.parse(
      'https://teste-firebase-27b07-default-rtdb.firebaseio.com$path',
    );

    var payload = json.encode({
      'name': usrPayload['name'],
      'age': usrPayload['age'],
      'height': usrPayload['height'],
      'weight': usrPayload['weight'],
    });
    final response = await http.post(url, body: payload);

    final id = json.decode(response.body)['name'];

    final dataUser = await http.get(url);
    final datauser = json.decode(dataUser.body)[id];

    User person = User(
      id,
      name: datauser['name'],
      age: datauser['age'],
      height: datauser['height'],
      weight: datauser['weight'],
    );

    users.add(person);
    print('');
  }
}
