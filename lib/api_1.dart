import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
class ApiPage extends StatefulWidget {
  const ApiPage({super.key});

  @override
  State<ApiPage> createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {

  bool loading=false;
  List data =[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("api page",style: TextStyle(color: Colors.black,),
        ),
        centerTitle: true,backgroundColor: Colors.blue,
          actions: [],//use to appear loading circle after that
           ),
      
      body: ListView( children:[Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: MaterialButton(
        color: Colors.red,
        textColor: Colors.black,
        onPressed: () async{    //function
        loading=true;
        setState(() {
          
        });
        var response = await get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
        var responsebody =jsonDecode(response.body);
        data.addAll(responsebody);
        loading=false;
        setState(() {
          
        });
       // print(responsebody[0]['title']);
        //print(response.body);say this string not list and map
        },
        child: Text('http request'),
        ),
        ),
        if(loading) Center(child: CircularProgressIndicator()),
        ...List.generate(data.length, (index) =>Card
        (child:ListTile(title: Text("title: ${data[index]['title']}"),
        subtitle: Text("body:${data[index]['body']}"),
        ),))
       ] ),
      );
  
  }
}