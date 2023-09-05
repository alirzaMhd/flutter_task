import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_task/features/auth/domain/use_cases/use_cases.dart';
import 'package:flutter_task/features/auth/domain/provider/provider.dart';
final authRepositoryProvider = Provider<AuthScreenUseCases>((ref) {
    final client = ref.watch(LoginProvider.apiProvider);
    return AuthScreenUseCases(client);
  });