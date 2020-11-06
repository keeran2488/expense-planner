import 'package:expense_planner/transcation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transcation> transactions = [
    Transcation(
      id: "t1",
      title: "New Shoes",
      amount: 4500,
      date: DateTime.now(),
    ),
    Transcation(
      id: "t2",
      title: "New T-Shirt",
      amount: 700,
      date: DateTime.now(),
    ),
    Transcation(
      id: "t3",
      title: "Mo:Mo",
      amount: 135,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense Planner"),
      ),
      body: Column(
        children: [
          Card(
            child: Text("CHART!"),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      child: Text(
                        "Rs.${tx.amount.toString()}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          tx.title,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          DateFormat.yMMMd().format(tx.date),
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
