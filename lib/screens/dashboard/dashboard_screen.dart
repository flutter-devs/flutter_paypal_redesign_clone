import 'package:flutter/material.dart';
import 'package:flutter_paypal_redesign_clone/shared/app_bar.dart';
import 'package:flutter_paypal_redesign_clone/screens/dashboard/balance_summary.dart';
import 'package:flutter_paypal_redesign_clone/screens/dashboard/transactions_summary.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar("Dashboard"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BalanceSummary(),
            Expanded(
              child: TransactionsSummary(),
            ),
          ],
        ),
      )
    );
  }
}