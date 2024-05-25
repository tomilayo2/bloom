import 'dart:convert';
import 'dart:developer';

import 'package:bloom/services/response_model.dart';
import 'package:http/http.dart' as http;

class BloomService {
  final client = http.Client();

  Future<ResponseModel> registerUser({required String email, required String password}) async {
    try{

      final response = await client.post(
        Uri.parse('https://bloom1.onrender.com/register'),
        headers: {'Content-Type': 'application/json',},
        body: json.encode({
          'email': email,
          'password': password,
        }),
      );
      log(response.body);
      Map<String, dynamic> result = json.decode(response.body);
      return ResponseModel.fromJson(result);
    }catch(e){
      return ResponseModel(isSuccessful: false, message: 'Something went wrong');
    }

  }
}