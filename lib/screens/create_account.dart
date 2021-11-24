import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height / 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: size.width / 0.5,
              child:
              IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
            ),
            SizedBox(
              height: size.height / 50,
            ),
            Container(
              width: size.width / 1.1,
              child: Text(
                "Welcome",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: size.width / 1.1,
              child: Text(
                'Create Account to Continue!',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: size.height / 20,
            ),
            /*email*/
            Padding(
              padding: const EdgeInsets.only(top: 18, right: 20,left: 20,bottom: 18),
              child: Container(
                  width: size.width,
                  alignment: Alignment.center,
                  child: field(size, "Name", Icons.account_box)),
            ),
            /*password*/
            Padding(
              padding: const EdgeInsets.only(right: 20,left: 20),
              child: Container(
                    width: size.width,
                    alignment: Alignment.center,
                    child: field(size, "Email", Icons.email)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18, right: 20,left: 20,bottom: 18),
              child: Container(
                  width: size.width,
                  alignment: Alignment.center,
                  child: field(size, 'password', Icons.lock)),
            ),
            SizedBox(height: size.height/10,), customButton(size),

            GestureDetector( onTap: ()=> Navigator.pop(context), child: Text('Login', style: TextStyle(color: Colors.blue,fontSize:16, fontWeight: FontWeight.w500),))
          ],
        ),
      ),
    );
  }
  Widget customButton(Size size) {
    return Container(
        height: size.height / 14,
        width: size.width / 1.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.blue,
        ),
        alignment: Alignment.center,
        child: Text(
          "Create Account",
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
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
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
