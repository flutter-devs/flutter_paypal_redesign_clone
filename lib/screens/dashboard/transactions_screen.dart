import 'package:flutter/material.dart';
import 'package:flutter_paypal_redesign_clone/utils/constants.dart';
import 'package:flutter_paypal_redesign_clone/utils/custom_field.dart';
import 'package:flutter_paypal_redesign_clone/screens/dashboard/option.dart';
import 'package:flutter_paypal_redesign_clone/model/transaction_model.dart';

class Transactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Transactions",
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
            child: Icon(
              Icons.filter_list,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            CustomField(
              autoValidate: false,
              hintText: "Name, Email or Mobile number",
              iconData: Icons.search,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Option(
                  text: "All",
                  selected: true
                ),

                Option(
                  text: "Payments in",
                  selected: false,
                ),

                Option(
                  text: "Payments out",
                  selected: false,
                ),

              ],
            ),

            SizedBox(
              height: 16,
            ),

            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(
                      height: 16,
                    ),

                    Text(
                      "Pending",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    Text(
                      "25/02/2021",
                      style: TextStyle(
                        color: kGreyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(
                      height: 8,
                    ),

                    TransactionModel(
                      imageUrl: "assets/images/model.png",
                      fullName: "Amenda lewis",
                      status: "received",
                      amount: "57.01",
                    ),

                    TransactionModel(
                      imageUrl: "assets/images/user_1.jpg",
                      fullName: "Jose Young",
                      status: "sended",
                      amount: "19.63",
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    Divider(
                      color: kPrimaryColor,
                      height: 1,
                      thickness: 1,
                    ),

                    SizedBox(
                      height: 32,
                    ),

                    Text(
                      "Completed",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    Text(
                      "23/02/2021",
                      style: TextStyle(
                        color: kGreyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(
                      height: 8,
                    ),

                    TransactionModel(
                      imageUrl: "assets/images/user_2.jpg",
                      fullName: "Janice Brewer",
                      status: "received",
                      amount: "114.00",
                    ),

                    TransactionModel(
                      imageUrl: "assets/images/user_3.jpg",
                      fullName: "Phoebe Buffay",
                      status: "received",
                      amount: "70.16",
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    Text(
                      "15/02/2021",
                      style: TextStyle(
                        color: kGreyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(
                      height: 8,
                    ),

                    TransactionModel(
                      imageUrl: "assets/images/user_4.jpg",
                      fullName: "Monica Geller",
                      status: "received",
                      amount: "44.50",
                    ),

                    TransactionModel(
                      imageUrl: "assets/images/user_5.jpg",
                      fullName: "Rachel Green",
                      status: "sended",
                      amount: "85.50",
                    ),

                    TransactionModel(
                      imageUrl: "assets/images/user_6.jpg",
                      fullName: "Kamila Fros",
                      status: "received",
                      amount: "155.00",
                    ),

                    TransactionModel(
                      imageUrl: "assets/images/user_7.jpg",
                      fullName: "Ross Geller",
                      status: "received",
                      amount: "23.50",
                    ),

                    TransactionModel(
                      imageUrl: "assets/images/user_8.jpg",
                      fullName: "Chandler Bing",
                      status: "received",
                      amount: "11.50",
                    ),

                    TransactionModel(
                      imageUrl: "assets/images/user_9.jpg",
                      fullName: "Yoyi Delirio",
                      status: "received",
                      amount: "36.00",
                    ),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}