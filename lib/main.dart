// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:bloc_concepts/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_concepts/cubit/counter_cubit.dart';
import 'package:bloc_concepts/cubit/user_cubit.dart';
import 'package:bloc_concepts/presentation/screens/home_screen.dart';
import 'package:bloc_concepts/presentation/screens/second_screen.dart';
import 'package:bloc_concepts/presentation/screens/third_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: _appRouter.onGeneratedRoute,
    );
  }

  @override
  void dispose() {
    //_appRouter.dispose();
    super.dispose();
  }
}
