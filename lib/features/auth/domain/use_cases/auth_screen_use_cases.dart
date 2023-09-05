import 'package:flutter/material.dart';
import 'package:flutter_task/constants/constants.dart';
import 'package:flutter_task/shared/domain/use_cases/use_cases.dart';
import 'package:http/http.dart' as http;

class AuthScreenUseCases {
  final http.Client _client;
  AuthScreenUseCases(this._client);

  Future<void> login(
      String email, String password, BuildContext context) async {
    print('ok');
    final url = Uri.parse(BackendConstants.loginLink);
    print('ok2');
    final response = await _client.post(
      url,
      body: {
        'email': email,
        'password': password,
      },
    );
    if (response.statusCode == 200) {
    } else {
      showSnackBar(context, response.body);
    }
  }
}
