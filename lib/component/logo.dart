// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomLogoAuth extends StatelessWidget {
   CustomLogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
                child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/4,
                    padding:  EdgeInsets.all(MediaQuery.paddingOf(context).deflateSize(Size.square(10)).width/10),
                    
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 208, 208, 208),
                        borderRadius:BorderRadius.circular(MediaQuery.sizeOf(context).width/4)),
                        
                    child: CircleAvatar( backgroundImage: AssetImage("assets/images/download.png",
                    
                   ),
                      radius:MediaQuery.of(context).size.width/10,
                     
                    )),
              ); 
  }
}
