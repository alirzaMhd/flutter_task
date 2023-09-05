import 'package:flutter_task/features/auth/domain/use_cases/use_cases.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginProvider {
  static final apiProvider = Provider<http.Client>((ref) => http.Client());
  
}
