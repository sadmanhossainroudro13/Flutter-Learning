import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter_cubit.dart';
import 'package:flutter_application_1/cubitHome.dart';
import 'package:flutter_application_1/setState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/themeChange.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()),
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, currentTheme) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,

            themeMode: currentTheme,

            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),

            home: CubitHome(),
          );
        },
      ),
    );
  }
}
