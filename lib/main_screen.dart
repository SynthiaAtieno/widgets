import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:widgets/palletes.dart';
import 'package:widgets/CharacterModel.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
 bool isLoading = true;
  Future<void> fetchCharacters() async {
    var url = Uri.parse("https://rickandmortyapi.com/api/character");
    final response = await http.get(url);
    var  body = response.body;
    Character character = Character.fromJson(jsonDecode(body));
    // String? name = character.results?.first.name;
    // print(name);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ricky and Motty API Call"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

        ],
      )
    );
  }
}
