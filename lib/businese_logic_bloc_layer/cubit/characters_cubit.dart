import 'package:bloc/bloc.dart';
import 'package:flutter_projrcts/data_layer/models/characters_5.dart';
import 'package:flutter_projrcts/data_layer/repository/characters_repositry.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

//حعمل باص للروبستري في الكيوبيت وبعمل انبعاث emitللاستيت الانا عايزها
class CharactersCubit extends Cubit<CharactersState> {
   final CharactersRepository charactersRepository;
  late List<Character>characters;

  //CharactersCubit() : super(CharactersInitial());
  CharactersCubit(this.charactersRepository) :super(CharactersInitial());

  List<Character>getAllCharacters(){
    charactersRepository.getAllCharacters().then((characters){
      emit(CharactersLoaded(characters));
      this.characters=characters;
       });
       return characters;
  }
}


