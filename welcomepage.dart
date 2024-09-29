import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ton/pages/loginpage.dart';
import 'package:ton/pages/registerpage.dart';

class WelcomePage extends StatefulWidget {
  static final String id='welcome';
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  @override
  void initState() {
    
    super.initState();
    Firebase.initializeApp().whenComplete(
      (){
        setState(() {
          
        });
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 23,),

            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pushNamed('/login');
              },
              child: Text('Login'),
            ),
            SizedBox(height: 24,),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pushNamed('/register');
              }, 
              child:Text('register'))
          ],
        )),
    );
  }
}