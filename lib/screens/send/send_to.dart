import 'package:flutter/material.dart';
import 'package:flutter_paypal_redesign_clone/utils/constants.dart';
import 'package:flutter_paypal_redesign_clone/shared/contact_item.dart';
import 'package:flutter_paypal_redesign_clone/utils/button.dart';
import 'package:flutter_paypal_redesign_clone/screens/confirmation_screen.dart';

class SendTo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Send money to",
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
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: EdgeInsets.only(right: 24, left: 24, bottom: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    ContactItem(
                      imageUrl: "assets/images/model.png",
                      fullName: "Amenda lewis",
                      email: "ameda_lewis_30@gmail.com",
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    Text(
                      "You send",
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
                      "15.00",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    Row(
                      children: [

                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: kPrimaryColor,
                          ),
                          child: Row(
                            children: [

                              Text(
                                "UYU",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(
                                width: 4,
                              ),

                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                                size: 18,
                              ),
                              
                            ],
                          ),
                        ),

                        SizedBox(
                          width: 16,
                        ),

                        Text(
                          "1 UYU = 0,024 USD",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    Divider(
                      color: Colors.grey[400],
                      height: 1,
                      thickness: 0.3,
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    Text(
                      "They receive",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    Text(
                      "10.75",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    Row(
                      children: [

                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            color: Colors.grey[400],
                          ),
                          child: Row(
                            children: [

                              Text(
                                "USD",
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(
                                width: 4,
                              ),

                              Icon(
                                Icons.arrow_drop_down,
                                color: kPrimaryColor,
                                size: 18,
                              ),
                              
                            ],
                          ),
                        ),

                      ],
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    Divider(
                      color: Colors.grey[400],
                      height: 1,
                      thickness: 0.3,
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    Text(
                      "Remarks",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    TextField(
                      style: TextStyle(
                        fontSize: 14,
                        color: kGreyColor,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(      
                          borderSide: BorderSide(
                            color: kPrimaryColor,
                            width: 2,  
                          ),
                        ),  
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: kPrimaryColor,
                            width: 2,  
                          ),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: kPrimaryColor,
                            width: 2,  
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Container(),
                    ),

                    Button(
                      text: "Send Money",
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Confirmation(send: true)),
                        );
                      },
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}