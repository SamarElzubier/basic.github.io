// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  const CustomButtonAuth({super.key, this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 40,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.orange,
      textColor: Colors.white,
      onPressed: onPressed,
      child: Text(title),
    );
  }
}




// class bottom extends StatelessWidget {
//   final void Function()? onPressed;
//   final String title;
//   const bottom({super.key, this.onPressed, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return  MaterialButton(onPressed: onPressed,
//     child: Text(title),
//             color: Colors.blue,
//             shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,
//             );
//   }
// }