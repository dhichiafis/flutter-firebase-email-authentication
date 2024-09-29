import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ton/pages/chatpage.dart';
import 'package:firebase_core/firebase_core.dart';

class RegisterPage extends StatefulWidget {
  static final String id='register';
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _auth=FirebaseAuth.instance;
  String? email='';
  String? password='';
  User? loggedInUser;
  String? phonenumber='';

  @override
  void initState(){
    super.initState();
    Firebase.initializeApp().whenComplete((){
      setState(() {
        
      });
    });
    getUser();
  }
  void getUser(){
    try {
      final user=_auth.currentUser;
      if(user!=null){
        loggedInUser=user;
      }

    }catch(e){
      throw e.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(  
          children: [
            Text('This is the register page'),
            SizedBox(height: 150,),
            TextField(
              decoration: InputDecoration(
                hintText: 'enter you phone number',
                border: OutlineInputBorder(
                  
                )
              ),
              onChanged: (val){
                phonenumber=val;
              },
            ),

            SizedBox(height: 23,),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'enter your email'
              ),
              onChanged: (value){
                email=value;
              },
            ),
            SizedBox(height: 23,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  
                ),
                hintText:'enter your password',
              ),
              onChanged: (value){
                password=value;
              },
            ),
            SizedBox(height: 23,),
            ElevatedButton(onPressed: ()async{
              setState(() {
                
              });
              try{
                
                final user=_auth.createUserWithEmailAndPassword(email: email!, password: password!);
                if (user!=null){
                  Navigator.of(context).pushNamed('/chat');
                }
                setState(() {
                  
                });
              }catch(e){
                throw e.toString();
              }
            }, child: Text('register',style: TextStyle(fontSize: 45),)),
            SizedBox(height: 28,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed('/login');
              },
              child: Text('Registered ? login',
              style: TextStyle(fontSize: 34,color: Colors.blue),),
            )
          ],
                ),
        )),
    );
  }
}