part of 'characters_cubit.dart';

@immutable
sealed class CharactersState {}

final class CharactersInitial extends CharactersState {}
//nay class add here itis extent from state
class CharactersLoaded extends CharactersState{
  final List<Character> characters; //give character any name and give it construct
//character out from internet ,,,, 
  CharactersLoaded(this.characters);  
//characters come from list this list come from cubit and will do that there
//characters pss to charactersload
}