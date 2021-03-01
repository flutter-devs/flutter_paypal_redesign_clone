import 'package:flutter/material.dart';
import 'package:flutter_paypal_redesign_clone/utils/constants.dart';
import 'package:flutter_paypal_redesign_clone/screens/dashboard/balance_screen.dart';

class BalanceSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BalanceScreen()),
        );
      },
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: size.width / 2,
            margin: EdgeInsets.symmetric(vertical: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: SizedBox(
                        height: 45,
                        width: 45,
                        child: Image.asset(
                          "assets/images/paypal_logo.png",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Text(
                        "Available Balance",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(
                        height: 8,
                      ),

                      Text(
                        r"$ 2,219.85",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    ],
                  ),
                ),
                // GestureDetector(
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => Balance()),
                //     );
                //   },
                //   child: Align(
                //     alignment: Alignment.bottomRight,
                //     child: Container(
                //       height: 40,
                //       width: 40,
                //       child: Center(
                //         child: Icon(
                //           Icons.details,
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),

          Text(
            "Estimated total of all currencies",
            style: TextStyle(
              color: kGreyColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
    );
  }
}