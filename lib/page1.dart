import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter_provider.dart';
import 'package:provider/provider.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    final counter = counterProvider.counter;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Counter Page One'),
          SizedBox(height: 20),
          Text(
            'Contador $counter',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              counterProvider.increment();
            },
            child: Text('+'),
          )
        ],
      ),
    );
  }
}
