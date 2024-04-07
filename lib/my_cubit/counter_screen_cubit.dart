// ignore_for_file: prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_types_as_parameter_names, prefer_const_constructors

//import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:flutter/rendering.dart';
//import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projrcts/api_1.dart';
import 'package:flutter_projrcts/my_cubit/counter_cubit.dart';
import 'package:flutter_projrcts/my_cubit/states1.dart';
class CounterScreen extends StatelessWidget {
  const
   CounterScreen({super.key});
   //var or CounterCubit cubit =  CounterCubit.get( context);
  @override
  Widget build(BuildContext context) { 
    return BlocProvider(
    
      create: ( BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, state) {
          CounterCubit cubit =  CounterCubit.get(context);//object
          return Scaffold(
                   appBar: AppBar(title: Text('counter',style: TextStyle(
                     color: Colors.black),),
                    centerTitle: true,
                    backgroundColor: Colors.blueGrey,
                    leading: IconButton(onPressed: (){
                      Navigator.pop(context);
                        
                    }, icon: Icon(Icons.arrow_back)),),


      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [SizedBox(width: MediaQuery.of(context).size.width/10),
           // IconButton(onPressed: (){}, icon: Icon(Icons.add,)),
             ElevatedButton.icon(onPressed: (){
              cubit.decreaseNumber();// استدعاء الfunction
             }, icon:  Icon(Icons.minimize), label:const Text("")),
            Expanded(
              child: 
              Text('${cubit.number}',
              textAlign: TextAlign.center,style: TextStyle(
              fontSize:MediaQuery.of(context).size.width/5, 
              fontWeight: FontWeight.bold
            ),)),

            ElevatedButton.icon(onPressed: (){
              cubit.increaseNumber();
            }, icon:  Icon(Icons.add), label: const Text('',)),
            SizedBox(width: MediaQuery.of(context).size.width/10)
          ],
        ),
      )
        );
        }
      ),
       );
        }
        }
  
    
        
      
    
    
  

