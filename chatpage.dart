import 'package:flutter/material.dart';
import 'package:ton/pages/welcomepage.dart';

class Chatpage extends StatefulWidget {
  static final String id='chat';
  const Chatpage({super.key});

  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pushNamed('/');
        }, icon: Icon(Icons.abc)),
      ),  
      body:SafeArea(child: Column(
        children: [
          Text('This is the chat page')
        ],
        
      ))
    );
  }
}