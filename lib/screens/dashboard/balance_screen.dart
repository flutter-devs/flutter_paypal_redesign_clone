import 'package:flutter/material.dart';
import 'package:flutter_paypal_redesign_clone/utils/constants.dart';
import 'package:flutter_paypal_redesign_clone/utils/button.dart';
import 'package:flutter_paypal_redesign_clone/model/balance_model.dart';

class BalanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "PayPal Balance",
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: SizedBox(
              height: 24,
              width: 24,
              child: Image.asset(
                "assets/icons/bell.png",
                color: kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 24, left: 24, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(
                height: 32,
              ),

              Center(
                child: Text(
                  r"$ 2,219.85",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(
                height: 32,
              ),

              Center(
                child: Text(
                  "Estimated total based on the most recent conversion rate, including our currency conversion precessing fee.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              Divider(
                color: kPrimaryColor,
                height: 1,
                thickness: 0.3,
              ),

              SizedBox(
                height: 16,
              ),

              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [

                      BalanceModel(
                        currency: "USD", 
                        money: "861.64"
                      ),

                      BalanceModel(
                        currency: "AUD", 
                        money: "1,775.25",
                        conversion: "1,180.34",
                      ),

                      BalanceModel(
                        currency: "EUR", 
                        money: "123.40",
                        conversion: "133.65",
                      ),

                      BalanceModel(
                        currency: "GBP", 
                        money: "30.59",
                        conversion: "37.22",
                      ),

                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              Divider(
                color: kPrimaryColor,
                height: 1,
                thickness: 0.3,
              ),

              SizedBox(
                height: 16,
              ),

              Button(
                text: "Withdraw Money",
                onPress: () {
                  
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}