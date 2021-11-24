import 'package:flutter/material.dart';

import 'create_account.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: size.height / 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: size.width /0.5,
              child:
                  IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
            ),
            SizedBox(
              height: size.height / 20,
            ),
            Container(
              width: size.width / 1.3,
              child: Text(
                "Welcome",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: size.width / 1.3,
              child: Text(
                'Sign in to Continue!',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: size.height / 10,
            ),
            /*email*/
            Container(
                alignment: Alignment.topCenter,
                child: field(size, 'email', Icons.email)),
            /*password*/
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Container(
                  width: size.width,
                  alignment: Alignment.center,
                  child: field(size, 'password', Icons.lock)),
            ),
            SizedBox(height: size.height/10,), customButton(size),
            SizedBox(height: size.height/40,),

            GestureDetector(onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (_)=> CreateAccount())) ,  child: Text("Create Account", style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.w500 ),))
          ],
        ),
      ),
    );
  }

  Widget customButton(Size size) {
    return  Container(
        height: size.height / 14,
        width: size.width / 1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.blue,
        ),
        alignment: Alignment.center,
        child: Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ));
  }

  Widget field(Size size, String hintText, IconData icon) {
    return Container(
      height: size.height / 14,
      width: size.height / 1.2,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white, ),
      alignment: Alignment.center,
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(icon),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
