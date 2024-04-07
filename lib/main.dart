// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projrcts/firebase_options.dart';
import 'package:flutter_projrcts/homepage.dart';
import 'package:flutter_projrcts/my_firebase_auth/signup.dart';
import 'package:flutter_projrcts/register.dart';
//import 'package:fluttercourse/auth/login.dart';
//import 'package:fluttercourse/auth/signup.dart';
//import 'package:fluttercourse/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
 );
   
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
@override
  void initState() {
    FirebaseAuth.instance
  .authStateChanges()
  .listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:FirebaseAuth.instance.currentUser==null? Login(): Homepage(),
      //home: Login(),
      routes: {
        "signup" : (context) => SignUp() , 
        "login" : (context) => Login(),
        'homepage':(context) => Homepage(),
              },
    );
  }
}















// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_projrcts/firebase_options.dart';
// import 'package:flutter_projrcts/my_firebase_auth/firebase_app.dart';
// //import 'package:flutter_projrcts/app_router_1.dart';

// void main()async {
// WidgetsFlutterBinding.ensureInitialized();
//    await Firebase.initializeApp(
//    options: DefaultFirebaseOptions.currentPlatform,
//     );

//   runApp(MyApp());
// }
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   void initState() {
//     FirebaseAuth.instance
//   .authStateChanges()
//   .listen((User? user) {
//     if (user == null) {
//       print('User is currently signed out!');
//     } else {
//       print('User is signed in!');
//     }
//   });
//     super.initState();
//   }
//   Widget build(BuildContext context) {
    
  


//     return MaterialApp(
//      // theme: ThemeData.dark(),
//       debugShowCheckedModeBanner: false,
//       home: SignIn(),
//       // routes: {
//       //   "signup":(context)=> SignUp(),
//       //   "login":(context)=>SignIn(),
//       //  },
//     );
//   }
// }

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


