import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp( // #1 MaterialApp: Ito yung main entry point na nagseset ng overall theme at home screen ng app.
    title: 'Week 1 - All 8 Widgets',
    theme: ThemeData(primarySwatch: Colors.teal),
    home: const HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold( // #2 Scaffold: Ito naman ang nagbibigay ng basic layout structure, tulad ng lalagyan ng AppBar at body.
    appBar: AppBar(title: const Text('All Widgets')), // #3 AppBar: Ang toolbar sa itaas ng screen usually naglalaman ng title ng page.
    body: Center( // #7 Center: Ito ginagamit para mapunta sa gitna ng screen ang text nito. 
      child: Container( // #8 Container: Parang isang box na ginagamit para lagyan ng padding, o margin ang isang widget.
        padding: const EdgeInsets.all(20),
        child: Column( // #6 Column: Ito inaayos patayo or Vertical layout ang mga text or logo at images. 
          children: [
            Row( // #5 Row: Ito inaayos pahiga or horizontal layout ang mga text or logo at images. 
              children: [
                const Icon(Icons.star),
                const Text('Flutter'), // #4 Text: Ginagamit siya para mag-display ng mga text o styling. 
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
