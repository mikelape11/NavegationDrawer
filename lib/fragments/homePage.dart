import 'package:flutter/material.dart';
import 'package:navigationdrawer/navigationDrawer/navigationDrawer.dart';
import 'package:navigationdrawer/providers/counter_provider.dart';
import 'package:provider/provider.dart';


class homePage extends StatelessWidget {
 static const String routeName = '/homePage';

 @override
 Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: navigationDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<CountersNotifier>().increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is home page"),
            const Count(),
          ],
        )
      )
    );
  }
}