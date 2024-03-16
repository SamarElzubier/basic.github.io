import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projrcts/businese_logic_bloc_layer/cubit/characters_cubit.dart';
import 'package:flutter_projrcts/constents_4/my_colors.dart';
import 'package:flutter_projrcts/data_layer/models/characters_5.dart';
class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  late List<Character> allCharacters;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    allCharacters= BlocProvider.of<CharactersCubit>(context).getAllCharacters();
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.myYellow,
        title: Text('characters',style: TextStyle(color: MyColors.myGery),
        ),
        
      ),
    );  
  }
}