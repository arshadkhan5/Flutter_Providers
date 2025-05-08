import 'package:flutter/material.dart';
import 'package:flutter_providers/provider/CountProvider.dart';
import 'package:flutter_providers/screen/ExampleProviderScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      // Make global access to provider
      create: (_) => CountProvider(),

      //In its child app Material App
      child: MaterialApp(
        themeMode: ThemeMode.dark,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const ExampleProviderScreen(),
      ),
    );
  }
}
