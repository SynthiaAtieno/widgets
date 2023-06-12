import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:widgets/characters.dart';

class CharactersProvider extends ChangeNotifier{
  static const endPoint = 'https://jatinderji.github.io/users_pets_api/users_pets.json';
  String error = '';
  bool isLoading = true;
  //CharactersModel2 model2 = welcomeFromJson(CharactersModel2(info: info, results: results));


  getDataFromApi() async{
    try{
      var url = Uri.parse(endPoint);
      Response response = await http.get(url);
      var body = response.body;
      if(response.statusCode == 200){
        //model2 = CharactersModel2.fromJson(jsonDecode(body));
      }else{
        error = response.statusCode.toString();
      }
    }
    catch(e){
      error = e.toString();
    }
    isLoading = false;
    notifyListeners();
  }
}