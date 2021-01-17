import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:friday/models/common/user.response.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'http.client.dart';

class AppRepository {
  /// Setup Sembast db
  String dbName = 'firday.db';
  DatabaseFactory dbFactory = databaseFactoryIo;
  Database _db;
  SharedPreferences prefs;

  Future<Database> getDb() async {
    if (_db == null) {
      var path = (await getApplicationSupportDirectory()).path + "/" + dbName;
      _db = await dbFactory.openDatabase(path);
    }
    return _db;
  }

  final commonStore = stringMapStoreFactory.store("common_store");
  final keyValue = StoreRef<String, dynamic>.main();

  /// keys
  static const USERKEY = 'loggedInUser';
  static const BASE_URL = "https://projekt-friday-backend.herokuapp.com";
  static const BASE_URL2 = "https://fridaycard.herokuapp.com";

  /// Fetches the profile information of the currently loggedIn user from the localStorage
  Future<LoginUserResponse> getLoggedInUser() async {
    final json = await commonStore.record(USERKEY).get(await getDb());
    if (json == null) return null;
    return LoginUserResponse.fromJson(json);
  }

  /// Header information for Authorization on server
  Future<Map<String, dynamic>> _getHeader() async {
    final user = await getLoggedInUser();
    // if (user?.userId == null) return {};
    // return {'auth': '${user.userId}'};
  }

  /// Sends a POST request to the given Api path and Body
  Future<dynamic> sendPost(String path, dynamic body, String baseUrl,
      {ProgressCallback sendProgress, int sendTimeout}) async {
    return (await HttpClient.instance.post(
        path, body, await _getHeader(), baseUrl,
        sendProgress: sendProgress, sendTimeout: sendTimeout)); //.data
  }

  /// Sends a POST request to the given Api path and Body
  Future<dynamic> sendPut(String path, dynamic body, String baseUrl,
      {ProgressCallback sendProgress, int sendTimeout}) async {
    return (await HttpClient.instance.put(
        path, body, await _getHeader(), baseUrl,
        sendProgress: sendProgress, sendTimeout: sendTimeout)); //.data
  }

  /// Sends a GET request to the given Api path
  Future<dynamic> sendGet(String path, String baseUrl,
      {Map<String, dynamic> header}) async {
    return (await HttpClient.instance
        .getRequest(path, header ?? await _getHeader(), baseUrl)); //.data
  }

  /// Helper method to get caught exceptions
  String getErrorMsg(dynamic e) {
    if (e is DioError) {
      final resdData = e.response?.data;
      final errorMessage =
          resdData is Map<String, dynamic> ? resdData['error'] : null;
      if (e.error is SocketException) return "No Internet";
      return errorMessage != null && errorMessage.isNotEmpty
          ? errorMessage
          : (e.message.isNotEmpty ? e.message : "Something went wrong");
    }
    return "Something went wrong";
  }

  Future<bool> isOnBoarded() async {
    if (prefs == null) prefs = await SharedPreferences.getInstance();
    return prefs.getBool('onboard') ?? false;
  }

  Future<bool> onBoard() async {
    if (prefs == null) prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboard', true);
    return prefs.getBool('onboard') ?? false;
  }

  Future<bool> signUp(Map<String, dynamic> form) async {
    try {
      var str = "${form['email']} | ${form['password']}";
      var bytes = utf8.encode(str);
      var base64Str = base64.encode(bytes);
      print(base64Str);

      final Map<String, dynamic> body = {
        "firstname": form['name'],
        "image": "",
        "lastname": "",
        "email": form['email'],
        "country_code": "+91",
        "mob": form['phone'],
        "kyc_status": false,
        "active": true
      };

      final res = await sendPost('/register/$base64Str', body, BASE_URL);
      if (res.statusCode == 200) return true;
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<LoginUserResponse> login(Map<String, dynamic> form) async {
    try {
      var str = "${form['email']} | ${form['password']}";
      var bytes = utf8.encode(str);
      final String token = base64.encode(bytes);
      print(token);

      Map<String, dynamic> header = {'auth': '$token'};
      final res = await sendGet('/login', BASE_URL, header: header);
      if (res.statusCode == 200) {
        print("response" + res.data);
        await commonStore.record(USERKEY).put(await getDb(), res.data);
        final userLogin = LoginUserResponse.fromJson(res.data);
        return userLogin;
      } else {
        return null;
      }

      // return false;
    } catch (e) {
      print(e);
      return null;
      // return false;
    }
  }
}
