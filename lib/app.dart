import 'package:flutter/material.dart';
import 'package:counter_7/pages/counter_7.dart';
import 'package:counter_7/pages/budget_list.dart';
import 'package:counter_7/pages/budget_form.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Counter7(),
      routes: {
        '/budget-form': (context) => const FormBudget(),
        '/budget-list': (context) => const DataBudget()
      },
    );
  }
}
