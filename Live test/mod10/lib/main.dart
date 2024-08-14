import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Text Styling App'),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Styling App'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Flutter Text Styling',
              style: TextStyle(
                fontSize: 28, // Larger text
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Experiment with text styles',
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                const snackBar = SnackBar(
                  content: Text('You clicked the button!'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('Click Me'),
            ),
            const SizedBox(height: 10,),
            RichText(text: const TextSpan(
              text: 'Welcome to ',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: 'Flutter!',style:TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)
                )
              ]
            ))
            
          ]
        ),
      ),
    );
  }
}


