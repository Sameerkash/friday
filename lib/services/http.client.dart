import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

_parseAndDecode(String response) {
  return jsonDecode(response);
}

_parseJsonBackground(String text) {
  return compute(_parseAndDecode, text);
}

class HttpClient {
  static const int CONNECT_TIMEOUT = 50000;
  static const int RECEIVE_TIMEOUT = 50000;

// TODO: Add base url
  /// Server IP address
  static const String BASE_URL = "";
  HttpClient._() {
    /// Initialize Dio method to se
    initializeDio();
  }

  Dio _dio;

  void initializeDio() {
    _dio = Dio();
    (_dio.transformer as DefaultTransformer).jsonDecodeCallback =
        _parseJsonBackground;
    // _dio.options.baseUrl = BASE_URL;

    _dio.options.connectTimeout = CONNECT_TIMEOUT;
    _dio.options.receiveTimeout = RECEIVE_TIMEOUT;
  }

  /// Singleton  to access the HTTP Client
  static final HttpClient _singleton = HttpClient._();

  /// static getter to access Singleton
  static HttpClient get instance => _singleton;

  ///  POST method to send a post request to the server with configured options.
  Future<Response> post(
      String path, dynamic data, Map<String, dynamic> header, String baseUrl,
      {ProgressCallback sendProgress, int sendTimeout}) async {
    final requestOption = Options(
        headers: header,
        sendTimeout: sendTimeout,
        followRedirects: false,
        validateStatus: (status) {
          return status < 500;
        });
    _dio.options.baseUrl = baseUrl;
    return await _dio.post(path,
        data: data, options: requestOption, onSendProgress: sendProgress);
  }

  ///  PUT method to send a post request to the server with configured options.
  Future<Response> put(
      String path, dynamic data, Map<String, dynamic> header, String baseUrl,
      {ProgressCallback sendProgress, int sendTimeout}) async {
    final requestOption = Options(
        headers: header,
        sendTimeout: sendTimeout,
        followRedirects: false,
        validateStatus: (status) {
          return status < 500;
        });
    _dio.options.baseUrl = baseUrl;
    return await _dio.put(path,
        data: data, options: requestOption, onSendProgress: sendProgress);
  }

  /// GET method to send a get request to the server with configure options
  Future<Response> getRequest(
    String path,
    Map<String, dynamic> header,
    String baseUrl,
  ) async {
    final requestOption = Options(
      headers: header,
    );
    _dio.options.baseUrl = baseUrl;
    return await _dio.get(path, options: requestOption);
  }
}
