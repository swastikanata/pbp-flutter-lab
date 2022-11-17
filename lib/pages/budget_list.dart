import 'package:flutter/material.dart';
import 'package:counter_7/models/budget.dart';
import 'package:counter_7/widgets/drawer.dart';
import 'package:counter_7/widgets/budget_card.dart';

class DataBudget extends StatefulWidget {
  const DataBudget({super.key});

  @override
  State<DataBudget> createState() => _DataBudgetState();
}

class _DataBudgetState extends State<DataBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: buildDrawer(context),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: Budget.listBudget.map((Budget o) {
              return buildCard(context, o);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
