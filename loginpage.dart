import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class LoginPage extends StatefulWidget {
  static final String id='login';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _auth=FirebaseAuth.instance;
  String? email='';
  String? password='';

  @override  
  void initState(){
    super.initState();
    Firebase.initializeApp().whenComplete((){
      setState(() {
        
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: SafeArea(child: Column(
        
        children: [
          Text('This is the login page'),
          Container(width: 160,height: 160,),
          SizedBox(height: 48,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'enter your email',
                border: OutlineInputBorder(),
              ),
              onChanged: (value){
                email=value;
              },
            ),
          ),
          SizedBox(height: 8,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'you password',
            
              ),
              onChanged: (value){
                password=value;
              },
            ),
          ),
          Expanded(
            child: ElevatedButton(onPressed: ()async{
              setState(() {
                
              });
              try {
                final use=_auth.signInWithEmailAndPassword(email: email!, password: password!);
                if(use!=null){
                  Navigator.of(context).pushNamed('/chat');
                }
              }catch(e){
                throw e.toString();
              }
              setState(() {
                
              });
            
            }, child: Text('login')),
          )
        ],
      )),
    );
  }
}