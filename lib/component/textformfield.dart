// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  final String hinttext ; 
  final TextEditingController mycontroller ; 

  const CustomTextForm({super.key, required this.hinttext, required this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mycontroller ,
      decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 20),
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide:
                  BorderSide(color: const Color.fromARGB(255, 184, 184, 184))),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: Colors.grey))),
    );
  }
}







// class customTextField extends StatelessWidget {
//   final String hintText;
//   final TextEditingController mycontroller;
//   const customTextField({super.key, required this.hintText, required this.mycontroller, required String hinttext});

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: mycontroller,
//       keyboardType: TextInputType.name,
//                 decoration: InputDecoration(
//                   hintText: hintText,
//                   contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 10),
//                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(40),
//                   borderSide: BorderSide(color: Colors.grey)
//                   ))
//                   );
//   }
// }