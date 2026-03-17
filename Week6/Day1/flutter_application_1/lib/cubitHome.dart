import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter_cubit.dart';
import 'package:flutter_application_1/themeChange.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitHome extends StatelessWidget {
  const CubitHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cubit Home"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              context.read<ThemeCubit>().toggleTheme();
            },
            icon: Icon(Icons.brightness_6, color: Colors.amber),
          ),
        ],
      ),

      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, count) {
            return Text(
              "Count is $count",
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterCubit>().incrememt();
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
          ),

          SizedBox(width: 20),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterCubit>().decrement();
            },
            child: Icon(Icons.remove),
            backgroundColor: Colors.redAccent,
            foregroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
