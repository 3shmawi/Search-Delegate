import 'package:flutter/material.dart';
import 'package:search/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> listSearch = [
      'Mohamed',
      'Hello',
      'Wow',
      'Next',
      'Search Delegate',
      'Ok',
      'Ashmawi',
    ];
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showSearch(context: context, delegate: SearchScreen(listSearch));
          },
          child: Text(
            'Search Screen',
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
      ),
    );
  }
}
