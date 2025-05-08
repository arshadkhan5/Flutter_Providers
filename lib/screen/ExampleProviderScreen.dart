import 'package:flutter/material.dart';
import 'package:flutter_providers/provider/CountProvider.dart';
import 'package:provider/provider.dart';

class ExampleProviderScreen extends StatefulWidget {
  const ExampleProviderScreen({super.key});

  @override
  State<ExampleProviderScreen> createState() => _State();
}

class _State extends State<ExampleProviderScreen> {

  @override
  Widget build(BuildContext context) {
    // making an instance of CountProvider
    final countProvider = Provider.of<CountProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Provider"),
      ),
      body:  Center(
        //access the count variable here
        child: Text(countProvider.count.toString() ,style:
        const TextStyle(fontSize: 50),),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // access to the method
         countProvider.setCounter();
        },
        child: const Icon(Icons.add),
      ),

    );

  }
}
