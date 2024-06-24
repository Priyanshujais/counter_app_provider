import 'dart:developer';

import 'package:counter_app_provider/Providers/counterprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("counter app"),
        centerTitle: true,
      ),
      body: Consumer<Counterprovider>(
        builder: (context, data, _) {log(data.count.toString());
          return Center(
            child: Text(data.count.toString(),style: TextStyle(fontSize: 70),),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        context.read<Counterprovider>().increment();
      },child: Icon(Icons.add),),
    );
  }
}
