import 'package:flutter/material.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/usecases/login_user.dart';

class AuthViewModel extends ChangeNotifier {
  final LoginUser _loginUser;
  bool isLoading = false;
  Failure? error;

  AuthViewModel(this._loginUser);

  Future<bool> login(String email, String password) async {
    isLoading = true;
    error = null;
    notifyListeners();

    final result = await _loginUser(
      LoginParams(email: email, password: password),
    );

    return result.fold(
      (failure) {
        error = failure;
        isLoading = false;
        notifyListeners();
        return false;
      },
      (user) {
        isLoading = false;
        notifyListeners();
        return true;
      },
    );
  }

  void clearError() {
    error = null;
    notifyListeners();
  }
}
