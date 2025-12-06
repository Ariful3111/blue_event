import 'dart:convert';

import 'package:blue_event/core/constants/network_path.dart';
import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;

class PostWithResponse {
  String baseUrl = NetworkPath.networkUrl;
  Future<Either<String, T>> postData<T>({
    required String url,
    required Map body,
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
    try {
      var response = await http.post(
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
        },
        Uri.parse(baseUrl + url),
        body: jsonEncode(body),
      );
      if (response.statusCode == 200 ||
          response.statusCode == 201 ||
          response.statusCode == 202) {
        return Right(fromJson(jsonDecode(response.body)));
      }
      throw jsonDecode(response.body)["message"];
    } catch (error) {
      return left(error.toString());
    }
  }
}
