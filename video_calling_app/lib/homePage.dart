import 'package:flutter/material.dart';
import 'package:video_calling_app/Call_Page.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Join a Call'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your name',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: ()  => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> CallPage(callID: textEditingController.text,))
                )
                  // Add your logic here for joining a call
                  // String userInput = textEditingController.text;
                  // print('User input: $userInput');
                ,
                child: const Text('Join a Call'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
