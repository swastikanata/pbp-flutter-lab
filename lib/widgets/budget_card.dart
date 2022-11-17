import 'package:flutter/material.dart';
import 'package:counter_7/models/budget.dart';

Card buildCard(BuildContext context, Budget data) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                data.title,
                style: const TextStyle(fontSize: 24.0),
              ),
              Text(
                data.date.toString().split(' ')[0],
                style: const TextStyle(fontSize: 16.0),
              )
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                data.amount.toString(),
                style: const TextStyle(fontSize: 16.0),
              ),
              Text(
                data.type,
                style: const TextStyle(fontSize: 16.0),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
