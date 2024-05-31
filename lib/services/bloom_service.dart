import 'dart:convert';
import 'dart:developer';

import 'package:bloom/features/articles/models/blog_post_model.dart';
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
  Future<ResponseModel> loginUser({required String email, required String password}) async{
    try{

      final response = await client.post(
          Uri.parse("https://bloom1.onrender.com/loginUser"),
          headers: {'Content-Type': 'application/json',},
        body: json.encode({
          'email': email,
          'password': password,
        })
      );
      log(response.body);
      Map<String, dynamic> result = json.decode(response.body);
      return ResponseModel.fromJson(result);
    }catch(e){
      return ResponseModel(isSuccessful: false, message: 'Something went wrong');
    }
  }
  Future<ResponseModel> verifyOtp({required String otp, required String email}) async{
    try{

      final response = await client.post(
          Uri.parse("https://bloom1.onrender.com/verify-otp"),
          headers: {'Content-Type': 'application/json',},
          body: json.encode({
            'otp': otp,
            'email': email,
          })
      );
      log(response.body);
      Map<String, dynamic> result = json.decode(response.body);
      return ResponseModel.fromJson(result);
    }catch(e){
      return ResponseModel(isSuccessful: false, message: 'Something went wrong');
    }
  }

  Future<BlogPostModel> getBlogPosts() async{
    try{
      final response = await client.get(Uri.parse("https://bloom1.onrender.com/blogpost"));
      Map<String, dynamic> result = json.decode(response.body);
      log(response.body);
      return BlogPostModel.fromJson(result);
    }catch(e){
      return const BlogPostModel(sys: null, total: 0, skip: 0, limit: 0, items: []);
    }
  }
}


