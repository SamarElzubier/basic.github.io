// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_projrcts/api_1.dart';
import 'package:flutter_projrcts/api_test.dart';
import 'package:flutter_projrcts/my_cubit/counter_screen_cubit.dart';

//import 'package:flutter_projrcts/app_router_1.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}

  // MaterialApp(
  //   debugShowCheckedModeBanner: false,
  //    home: CounterScreen()
    
  // ));

//   runApp( RickAndMorty(appRouter: AppRouter(),));// كاني بعملcreate for new object
// }

// class RickAndMorty extends StatelessWidget {
//    const RickAndMorty({super.key, required this.appRouter}); //required لان الابرواتر بيتحرك معاي بين الشاشات

//   final AppRouter appRouter;       //استدعاء الراوت
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      onGenerateRoute:appRouter.generateRoute ,   //to navigate between screens

//     );
//   }
//}


