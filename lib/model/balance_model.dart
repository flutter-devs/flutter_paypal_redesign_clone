import 'package:flutter/material.dart';
import 'package:flutter_paypal_redesign_clone/utils/constants.dart';

class BalanceModel extends StatefulWidget {

  final String currency;
  final String money;
  final String conversion;

  BalanceModel({@required this.currency, @required this.money, this.conversion});

  @override
  _BalanceModelState createState() => _BalanceModelState();
}

class _BalanceModelState extends State<BalanceModel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      height: 60,
      child: Row(
        children: [

          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage("assets/images/" + widget.currency + ".png"), 
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(
            width: 16,
          ),

          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text(
                  widget.currency,
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    Text(
                      r"$ " + widget.money,
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),

                    widget.conversion != null
                    ? Column(
                      children: [

                        SizedBox(
                          height: 4,
                        ),

                        Text(
                          r"$ " + widget.conversion + " in USD",
                          style: TextStyle(
                            color: kGreyColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),

                      ],
                    )
                    : Container()

                  ],
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}