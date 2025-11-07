import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login(String email, String password);
  Future<UserModel> register(String name, String email, String password);
  Future<void> logout();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final http.Client client;
  final String baseUrl;

  AuthRemoteDataSourceImpl({required this.client, required this.baseUrl});

  @override
  Future<UserModel> login(String email, String password) async {
    final response = await client.post(
      Uri.parse('$baseUrl/login'),
      body: {'email': email, 'password': password},
    );

    if (response.statusCode == 200) {
      return UserModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to login');
    }
  }

  @override
  Future<UserModel> register(String name, String email, String password) async {
    final response = await client.post(
      Uri.parse('$baseUrl/register'),
      body: {'name': name, 'email': email, 'password': password},
    );

    if (response.statusCode == 201) {
      return UserModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to register');
    }
  }

  @override
  Future<void> logout() async {
    final response = await client.post(Uri.parse('$baseUrl/logout'));

    if (response.statusCode != 200) {
      throw Exception('Failed to logout');
    }
  }
}
