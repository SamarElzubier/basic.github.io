import 'package:flutter_projrcts/data_layer/models/characters_5.dart';
import 'package:flutter_projrcts/data_layer/web_services_api/characters_web_services.dart';
import 'package:flutter_projrcts/presentaion_layer/screens_2/characters_details.dart';
class CharactersRepository{
  final CharactersWebServices charactersWebServices;

  CharactersRepository(this.charactersWebServices); //constructors
Future<List<Character>> getAllCharacters()async{
  final characters = await charactersWebServices.getAllCharacters();//come from api and put it in the character (one list)
  return characters.map((character) => Character.fromJson(character)).toList();//امشي لي لكل جراكترسfor every element in characters
}
}
 