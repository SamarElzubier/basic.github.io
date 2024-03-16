import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projrcts/constents_4/strings.dart';

class CharactersWebServices {
  late Dio dio; //with api can use dio or http
  //construct
  CharactersWebServices() {
    BaseOptions options = new BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20),
    );
    dio = new Dio(options); //مرر لي الابوشنس بتاعت البيس في الديو
  }                       //function:getAllCharacters
  Future<List<dynamic>> getAllCharacters() async {
    // الفيتشر الراجعه لسته من البوست مان
    try {
      // اذا متوقع حدوث خطا
      Response response =
          await dio.get('characters'); // دا تبع الفيتشر اصلاودخلناهو في التراي
      print(response.data.toString()); //لو عايزه اشوف
      return response.data;
    } catch (e) {
      print(e.toString()); // لو عايزه اشوف الايرور
      return []; //رجع لي فراغ
    }
  }//alt+shift+f
}
