import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ton/firebase_options.dart';
import 'package:ton/pages/chatpage.dart';
import 'package:ton/pages/loginpage.dart';
import 'package:ton/pages/registerpage.dart';
import 'package:ton/pages/welcomepage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:'/',
      routes:{
        '/':(context)=>WelcomePage(),
        '/login':(context)=>LoginPage(),
      '/register':(context)=>RegisterPage(),
        '/chat':(context)=>Chatpage()
      }
    );
  }
}
class MyHomeApp extends StatefulWidget {

  @override 

  State<MyHomeApp> createState()=>_MyHomePageState();
}

class _MyHomePageState extends State<MyHomeApp>{
  String name='';
  double age=0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:SafeArea(child: Column(
        children: [
          Text('This is it'),
          SizedBox(height: 12,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: TextField(
              decoration: InputDecoration(
              border: OutlineInputBorder()
              ),
              onChanged: (String value){
                setState(() {
                  
                });
                name=value;
               // setState(() {
                  
                //});
              },
               ),
          ),
          SizedBox(height: 8,),
          Text('name is:${name}'),

        ],
      ))
    );
  }
}