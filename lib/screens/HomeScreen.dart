import 'package:diplom_chat_app/screens/Firebase/firebase_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen'),),
      body: TextButton(onPressed: ()=> logOut(context),child: Text('LogOut'),),
    );
  }
}