import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projrcts/businese_logic_bloc_layer/cubit/characters_cubit.dart';
import 'package:flutter_projrcts/data_layer/repository/characters_repositry.dart';
import 'package:flutter_projrcts/data_layer/web_services_api/characters_web_services.dart';
import 'package:flutter_projrcts/presentaion_layer/screens_2/characters_details.dart';
import 'package:flutter_projrcts/presentaion_layer/screens_2/characters_screen.dart';
class AppRouter{
  //objects of cubit
late CharactersRepository charactersRepository;
late CharactersCubit charactersCubit;

AppRouter(){
  charactersRepository=CharactersRepository(CharactersWebServices());
  charactersCubit=CharactersCubit(charactersRepository);
}

  Route? generateRoute(RouteSettings settings){       //? null safty
    switch (settings.name)//وديني لاسم الصفحة العايزانا
     {
      case CharactersScreen: //home sceern '/'>characters screen
      return MaterialPageRoute(builder: (_) =>BlocProvider(
        create: ( BuildContext context) => CharactersCubit(charactersRepository),
        child: CharactersScreen(),
      ), 
      );  // first screen
        
        case CharacterDetailsScreen:
        return MaterialPageRoute(builder: (_)=> CharacterDetailsScreen());
        
      
    }
  }
}