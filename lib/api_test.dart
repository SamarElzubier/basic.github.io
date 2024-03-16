import 'dart:convert';

import'package:flutter/material.dart';
import 'package:http/http.dart';
class ApiTest extends StatefulWidget {
  const ApiTest({super.key});

  @override
  State<ApiTest> createState() => _ApiTestState();
}

class _ApiTestState extends State<ApiTest> {
  bool loading=false;
  List data =[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('show details'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        actions: [],
      ),
      body: ListView(children: [
        Container(margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20), 
        child: MaterialButton(
          color: Colors.blueGrey,
          onPressed: ()async{
            loading=true;
            setState(() {
              
            });
        var response= await get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
              var responsebody=jsonDecode(response.body);//from json to list dart
        data.addAll(responsebody);
        loading=false;
        setState(() {
          
        });
       // print(responsebody);
       // print(response.body);
        },child: Text('get details'),),
       

      ),
      if(loading)Center(child: CircularProgressIndicator(),),
     ...List.generate(data.length, (index) =>Card(color: Colors.amber,
      child: ListTile(title: Text('email: ${data[index]["email"]}',style: TextStyle(color: Colors.red),
      ),
      subtitle: Text('id: ${data[index]["id"]}',
      ),
      trailing: Text("postID is: ${data[index]['postId']}"),
      
      ),

     ))
      ],),
    );
  }
}